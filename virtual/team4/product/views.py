from django.shortcuts import render
from rest_framework import viewsets
from .serializers import ProductSerializer, CategorySerializer, SongListSer, MessagesSerializer
from .models import Product, Category, Songlist, Messages
# Create your views here.

class ProductViewSet(viewsets.ModelViewSet):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer

class CategoryViewSet(viewsets.ModelViewSet):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer

    
# 練習 restful api
class SongListViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Songlist.objects.all()
    serializer_class = SongListSer 

class MessagesViewSet(viewsets.ModelViewSet):
    
    queryset = Messages.objects.all()
    serializer_class = MessagesSerializer