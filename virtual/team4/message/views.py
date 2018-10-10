from django.shortcuts import render,redirect
from django.http import HttpResponse

from comment import models
from comment.models import Messages
from comment.serializers import MessagesSerializer
from rest_framework import viewsets
# Create your views here.
def home(request):  
    title = "呼叫 Restfual api"
    return render(request,'message/home.html',locals())

def home(request):
    return render(request,'home.html',{'title':'message'})

class MessagesViewSet(viewsets.ModelViewSet):
    queryset = Messages.objects.all()
    serializer_class = MessagesSerializer

