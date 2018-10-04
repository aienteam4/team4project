from .models import Songlist, Member, Orderhistory
from django.shortcuts import render,redirect
import random,re
from django.http import HttpResponse
from django.contrib.sessions.models import Session
from .forms import SongListForm
# 練習restful api
from .serializers import SongListSer
from rest_framework import viewsets
import json

# Create your views here.

def music(request):
    return render(request,'music.html')

def findsong(request):
    # 從資料庫撈出隨機一首歌
    moodNum = request.GET['q']
    songs = Songlist.objects.filter(mood=moodNum)
    song = random.choice(songs)
    index = song.url.find('=')
    youtubeId = song.url[index+1:]   
    return HttpResponse(youtubeId)

# "https://www.youtube.com/embed/DHxtc4W46Qo?rel=0&amp;showinfo=0"

def taste(request):
    """
    紀錄歌曲喜好
    """
    herTaste = request.GET["taste"]        #喜歡或不喜歡(1,0)
    songUrl = "https://www.youtube.com/watch?v=" + request.GET["youtubeId"]
    song = Songlist.objects.filter(url=songUrl)[0]
    songId = song.id                                    #歌曲ID   
    sid = request.COOKIES['sessionid']
    herId = Session.objects.get(pk = sid).get_decoded()['memberId']
    index = song.url.find('=')
    youtubeId = song.url[index+1:]    
    data1 = Orderhistory.objects.filter(member = herId)
    data = data1.filter(song = songId)
    member = Member.objects.get(id=herId)
    if data:
        data[0].this_song_order_num += 1
        data[0].this_song_like_or_not = herTaste
        data[0].save() 
    else:
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
    theDict = {"songname":songname,"singer":singer,"youtubeId":youtubeId}
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
    # del request.session['lucky_number']                     # 刪除
    else:
        response = HttpResponse("You haven't logged in")
        request.session['memberId'] = 1                       # 設置會員id

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
              
# 練習 restful api
class SongListViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Songlist.objects.all()
    serializer_class = SongListSer               
