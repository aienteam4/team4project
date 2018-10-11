from .models import Songlist, Orderhistory,Member
from django.shortcuts import render,redirect
import random,re,json,time,requests
from django.http import HttpResponse
from django.contrib.sessions.models import Session
from .forms import SongListForm
from datetime import datetime,date,timedelta
from bs4 import BeautifulSoup
from selenium import webdriver
from django.utils import timezone

# Create your views here.

def music(request):
    return render(request,'music.html')

def achievement(request):
    pass

def findsong(request):
    # 從資料庫撈出隨機一首歌
    moodNum = request.GET['moodNum']
    songs = Songlist.objects.filter(mood=moodNum)
    song = random.choice(songs)
    index = song.url.find('=')
    youtubeId = song.url[index+1:]
    songId = song.id
    theDict = {"songId":songId, "youtubeId":youtubeId}
    # 把字典轉化為json字串
    theJson = json.dumps(theDict)          
    return HttpResponse(theJson)

# "https://www.youtube.com/embed/DHxtc4W46Qo?rel=0&amp;showinfo=0"

def taste(request):
    """
    紀錄歌曲喜好
    """
    herTaste = request.GET["taste"]        #喜歡或不喜歡(1,0)
    songId = request.GET["songId"]
    print(herTaste)
    print(songId)
    try:
        song = Songlist.objects.get(id=songId)
        print(song)
    except:
        print("url有問題")    
    songId = song.id                                    #歌曲ID  
    herId = request.COOKIES['name_member'] 
    print('輸入者id' + herId)
    # sid = request.COOKIES['sessionid']
    # herId = Session.objects.get(pk = sid).get_decoded()['memberId']
    index = song.url.find('=')
    youtubeId = song.url[index+1:]    
    data1 = Orderhistory.objects.filter(member = herId)
    print("data1:",data1)
    data = data1.filter(song = songId)
    print("data:",data)
    member = Member.objects.get(id=herId)
    print("member:", member)
    print("到這沒問題")
    if data:                                             #如果此會員點過這首歌...
        print("他點過這首歌")
        print(data.last().order_time)                                           
        newdata = data.last()
        newdata.order_num = data.last().order_num + 1
        newdata.this_song_order_num = data.last().this_song_order_num + 1
        newdata.this_song_like_or_not = herTaste
        newdata.order_time = datetime.now()
        print(newdata.order_time)
        newdata.save()
        print(newdata.this_song_like_or_not) 
    else:                                               #如果此會員沒點過這首歌...
        print("他沒點過這首歌")
        newOrder = Orderhistory()
        newOrder.member = member
        newOrder.song = song
        if data1:
            newOrder.order_num = data1.last().order_num + 1
        else:
            newOrder.order_num = 1
        newOrder.this_song_order_num = 1    
        newOrder.this_song_like_or_not = herTaste
        newOrder.save()
    # 在頁面顯示上一首聽的歌
    songname = song.name
    singer = song.singer
    theDict = {"songname":songname,"singer":singer,"youtubeId":youtubeId,"songId":songId}
    # 把字典轉化為json字串
    theJson = json.dumps(theDict)          
    return HttpResponse(theJson)
    

def crud(request):
    if request.method == 'POST':
        id = request.POST['id']
        name = request.POST['name']
        singer = request.POST['singer']
        type = request.POST['type']
        mood = request.POST['mood']
        url = request.POST['url']
        readall = request.POST.get('readall', False)
    songListForm = SongListForm()
    return render(request,'crud.html',locals())

def searchCore(request):
    id = request.GET['id']
    name = request.GET['name']
    singer = request.GET['singer']
    type = request.GET['type']
    mood = request.GET['mood']
    url = request.GET['url']
    readall = request.GET.get('readall', False)
    if id:
        songMeta = Songlist.objects.filter(id=id)
    elif name:
        songMeta = Songlist.objects.filter(name = name)
    elif singer:
        songMeta = Songlist.objects.filter(singer = singer)
    elif type:
        songMeta = Songlist.objects.filter(type = type)
    elif mood:
        songMeta = Songlist.objects.filter(mood = mood)
    elif url:
        songMeta = Songlist.objects.filter(url = url)    
    if readall:
        songMeta = Songlist.objects.all()
    # updateUrl = '/music/update/?id='+id    
    return songMeta

def search(request):
    songMeta = searchCore(request)
    return render(request,'crud.html',locals())

def delete(request):
    id = request.GET['id']
    songMeta = Songlist.objects.get(id=id)
    songMeta.delete()
    return render(request,'crud.html')

def create(request):
    if request.method == 'POST':
        song = Songlist()
        song.name = request.POST['name']
        song.singer = request.POST['singer']
        song.type = request.POST['type']
        song.mood = request.POST['mood']
        song.url = request.POST['url']
        song.save()
    return redirect('/music/crud/')

def update(request):
    if request.method == 'POST':
        print (request.POST['id'])
        id = request.POST['id']
        songMeta = Songlist.objects.get(id=id)
        songMeta.name = request.POST['name']
        songMeta.singer = request.POST['singer']
        songMeta.type = request.POST['type']
        songMeta.mood = request.POST['mood']
        songMeta.url = request.POST['url']
        songMeta.save()
        return render(request,'crud.html')
    else:    
        id = request.GET['id']
        songMeta = Songlist.objects.get(id=id)    
        return render(request,'update.html',locals())
        
# 練習session
def set_session(request):

    if 'memberId' in request.session:
        memberId = request.session['memberId']                # 讀取會員id

        response = HttpResponse('memberId : ' + str(memberId))
        del request.session['memberId']                     # 刪除
    else: 
        request.session['memberId'] = 4                 # 設置會員id
        response = HttpResponse('您還未登入')
                              
    return response

def session_test(request):
    sid = request.COOKIES['sessionid']
    sid2 = request.session.session_key
    s = Session.objects.get(pk = sid)
    s_info = "<br>Session Id:" + sid + "<br>Session Id2:" + sid + '<br>expire date:' + str(s.expire_date) + '<br>Session Data:' + str(s.get_decoded())
    return HttpResponse(s_info)

def cookietest(request):
    
    if request.session.test_cookie_worked():
        request.session.delete_test_cookie()
        message = 'You can eat cookies!'
    else:
        message = 'You cannot eat cookies...'
    request.session.set_test_cookie()
    return HttpResponse(message)

# 練習login
def checkEmail(request):    
    try:
        email = request.GET['email']
        print (email)
        if Member.objects.filter(email = email):
            judge = "查有此人"
        else:
            judge = "查無此人"    
    except:
        judge = "查無此人"
    return HttpResponse(judge)
              
# 爬蟲
def worldHotSong(request):
    driver = webdriver.Chrome()
    #利用Katalon跑到發燒音樂頁面
    driver.get("https://www.youtube.com/")
    time.sleep(1)
    driver.find_element_by_id("guide-icon").click()
    time.sleep(1)
    driver.find_element_by_xpath(u"(.//*[normalize-space(text()) and normalize-space(.)='首頁'])[1]/following::span[2]").click()
    time.sleep(2)  #這些睡眠時間很重要，不然selenium會跟不上
    driver.find_element_by_xpath(u"(.//*[normalize-space(text()) and normalize-space(.)='•'])[1]/following::img[2]").click()
    time.sleep(2)
    # 用BeautifulSoup爬出資料
    soup = BeautifulSoup(driver.page_source, 'lxml')
    # 存放資料的字典
    dataDict = {}
    for song in soup.select('ytd-video-renderer #video-title',limit=10):
        print(song.get('aria-label'))
        nameEnd = song.get('aria-label').find("上")
        name = song.get('aria-label')[:nameEnd-1]
        print(name)
        print(song.get('href'))
        idStart = song.get('href').find("=")
        id = song.get('href')[idStart+1:]
        print(id)
        print("=========================")
        dataDict[name] = id
    driver.close()
    print(dataDict)
    # 把字典轉化成json字串
    dataJson = json.dumps(dataDict, ensure_ascii=False, indent=4)
    return HttpResponse(dataJson)              

#畫圖
def drawChart(request):
    revel_list = [] # 製作存放數據的陣列
    happy_list = []
    lonely_list = []
    sad_list = []
    anger_list = []
    print(revel_list, happy_list, lonely_list, sad_list, anger_list)
    day = 6
    todaydate = timezone.now()
    while day >= 0 :        
        enddate = todaydate - timedelta(days=day)
        startdate = enddate + timedelta(days=1)
        revel_list.append(len(Orderhistory.objects.filter(order_time__range = [enddate, startdate]))) 
        happy_list.append(len(Orderhistory.objects.filter(order_time__range=[enddate, startdate], song__mood = 2)))
        lonely_list.append(len(Orderhistory.objects.filter(order_time__range=[enddate, startdate], song__mood = 3)))
        sad_list.append(len(Orderhistory.objects.filter(order_time__range=[enddate, startdate], song__mood = 4)))
        anger_list.append(len(Orderhistory.objects.filter(order_time__range=[enddate, startdate], song__mood = 5)))
        day -= 1    
    # print(revel_list) 
    return render(request, 'chart.html', locals())