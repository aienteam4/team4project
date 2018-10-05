from django.shortcuts import render
from rest_framework import viewsets
from .serializers import ProductSerializer, SongListSer
from .models import Product, Songlist
# Create your views here.

class ProductViewSet(viewsets.ModelViewSet):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer
    
# 練習 restful api
class SongListViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Songlist.objects.all()
    serializer_class = SongListSer 