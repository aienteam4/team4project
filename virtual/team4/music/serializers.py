from rest_framework import serializers
from .models import Songlist

class SonglistSerializer(serializers.ModelSerializer):
    class Meta:
        model = Songlist
        fields = '__all__'