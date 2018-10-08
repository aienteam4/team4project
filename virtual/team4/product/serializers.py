from rest_framework import serializers
from .models import Product, Category, Songlist, Messages

class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = '__all__'

# RESTFUL-api：這個檔案負責資料格式轉換，把 songlist model 序列化成 json
class SongListSer(serializers.ModelSerializer):
    # 亞資料類別
    class Meta:
        model = Songlist
        fields = '__all__' #將所有欄位序列化        
class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = '__all__'
class MessagesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Messages
        fields ='__all__'