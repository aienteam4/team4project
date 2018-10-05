from rest_framework import serializers
from comment.models import Messages

class MessagesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Messages
        fields ='__all__'