from rest_framework import serializers
from .models import Friends_Chat

# 序列化,做資料格式轉換 ex: list -> json
class Friends_ChatSerializer(serializers.ModelSerializer):
    class Meta:
        model = Friends_Chat
        fields = '__all__'     #將所有欄位序列化

