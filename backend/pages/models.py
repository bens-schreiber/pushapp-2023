from djongo import models
from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from drf_yasg import openapi


class Entry(models.Model):
    key = models.CharField(max_length=100)
    value = models.CharField(max_length=100)

class EntrySerializer(ModelSerializer):
    class Meta:
        model = Entry
        fields = "__all__"
