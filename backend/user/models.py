from django.db import models

# User serializer
from django.contrib.auth.models import User
from rest_framework import serializers

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'username', 'email']

class GoogleViewSerializer(serializers.Serializer):
    token = serializers.CharField(max_length=500)

class UserTokenSerializer(serializers.Serializer):
    username = serializers.CharField(max_length=255)
    access_token = serializers.CharField(max_length=255)
    refresh_token = serializers.CharField(max_length=255)