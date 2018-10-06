from django.shortcuts import render
from django.http import HttpResponse
from messagge.models import Messages
# Create your views here.
def index(request):
    return render(request,'index.html',{'title':'message'})

def comment(request)
dacdklsfjdg