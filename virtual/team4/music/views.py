from .models import Songlist
from .serializers import SonglistSerializer
from rest_framework import viewsets
from django.shortcuts import render
import random,re
from django.http import HttpResponse


# Create your views here.

class SonglistViewSet(viewsets.ModelViewSet):
    queryset = Songlist.objects.all()
    serializer_class = SonglistSerializer

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

def search(request):
    id = request.GET['id']
    name = request.GET['name']
    singer = request.GET['singer']
    type = request.GET['type']
    mood = request.GET['mood']
    url = request.GET['url']
    readall = request.GET.get('readall', False)
    songMeta = Songlist.objects.filter(singer=singer)
    if readall:
        songMeta = Songlist.objects.all()
    return render(request,'crud.html',locals())

def delete(request):
    id = request.GET['id']
    print(id)
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

# 練習cookie
def cookieTest(request):
    request.session['lucky_number'] = 8                               # 設置lucky_number

    if 'lucky_number' in request.session:
        lucky_number = request.session['lucky_number']                # 讀取lucky_number

        response = HttpResponse('Your lucky_number is '+str(lucky_number))
    # del request.session['lucky_number']                               # 刪除lucky_number

    return response