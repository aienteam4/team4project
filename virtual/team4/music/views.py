from music.models import Songlist
from django.shortcuts import render
import random,re
from django.http import HttpResponse
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
    return HttpResponse('https://www.youtube.com/embed/'+songId+'?rel=0&amp;showinfo=0&autoplay=1')

# "https://www.youtube.com/embed/DHxtc4W46Qo?rel=0&amp;showinfo=0"