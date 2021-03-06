from rest_framework import serializers
from .models import Songlist

# RESTFUL-api：這個檔案負責資料格式轉換，把 songlist model 序列化成 json
class SongListSer(serializers.ModelSerializer):
    # 亞資料類別
    class Meta:
        model = Songlist
        fields = '__all__' #將所有欄位序列化