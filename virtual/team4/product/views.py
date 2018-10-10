from django.shortcuts import render
from rest_framework import viewsets
from .serializers import ProductSerializer, CategorySerializer, SongListSer, Friends_ChatSerializer
from .models import Product, Category, Songlist, Friends_Chat
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

# restful api makefriends
class Friends_ChatViewSet(viewsets.ModelViewSet):
    queryset = Friends_Chat.objects.all()
    serializer_class = Friends_ChatSerializer