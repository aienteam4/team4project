from django.shortcuts import render
from .models import Messages
from .serializers import MessagesSerializer
from rest_framework import viewsets
# Create your views here.

# def home(request):
#     return render(request,'home.html',{'title':'message'})
# def comment(request)
# class MessagesViewSet(viewsets.ModelViewSet):
#     queryset = Messages.objects.all()
#     serializer_class = MessagesSerializer