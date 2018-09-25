from .models import Songlist
from django.shortcuts import render
import random,re
from django.http import HttpResponse
from django.contrib.sessions.models import Session


# Create your views here.

def music(request):
    return render(request,'music.html')

def findsong(request):
    # 從資料庫撈出隨機一首歌
    moodNum = request.GET['q']
    songs = Songlist.objects.filter(mood=moodNum)
    song = random.choice(songs)
    index = song.url.find('=')
    songId = song.url[index+1:] 
    songUrl = 'https://www.youtube.com/embed/'+songId+'?rel=0&amp;showinfo=0&autoplay=1'  
    return HttpResponse(songId)

# "https://www.youtube.com/embed/DHxtc4W46Qo?rel=0&amp;showinfo=0"


def crud(request):
    if request.method == 'POST':
        id = request.POST['id']
        name = request.POST['name']
        singer = request.POST['singer']
        type = request.POST['type']
        mood = request.POST['mood']
        url = request.POST['url']
        readall = request.POST.get('readall', False)

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
    song = Songlist()
    song.name = request.POST['name']
    song.singer = request.POST['singer']
    song.type = request.POST['type']
    song.mood = request.POST['mood']
    song.url = request.POST['url']
    song.save()
    return render(request,'crud.html')

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

    if 'lucky_number' in request.session:
        lucky_number = request.session['lucky_number']                # 讀取lucky_number

        response = HttpResponse('Your lucky_number is '+str(lucky_number))
    # del request.session['lucky_number']                               # 刪除
   
    request.session['lucky_number'] = 9                               # 設置lucky_number

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

