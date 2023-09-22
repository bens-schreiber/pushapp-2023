from django.db import models
from rest_framework import serializers

# Basic Key, Value model for CRUD example
class KeyValue(models.Model):
    key = models.CharField(max_length=100, unique=True)
    value = models.CharField(max_length=100)

    def __str__(self):
        return self.key
    
class KeyValueSerializer(serializers.ModelSerializer):
    class Meta:
        model = KeyValue
        fields = '__all__'