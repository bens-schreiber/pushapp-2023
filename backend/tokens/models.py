from django.db import models
from django.contrib.auth.models import User
from group.models import Group
from rest_framework import serializers

# Create your models here.

class Token(models.Model):
    id = models.AutoField(primary_key=True)
    group = models.ForeignKey(Group, on_delete=models.CASCADE)
    holder = models.ForeignKey(User, on_delete=models.CASCADE)
    score = models.IntegerField(default=0)

    def __str__(self):
        return str(self.id) + " " + str(self.group) + " " + str(self.holder) + " " + str(self.score)

class TokenSerializer(serializers.ModelSerializer):
    class Meta:
        model = Token
        fields = "__all__"