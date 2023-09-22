from django.db import models
from django.contrib.postgres.fields import ArrayField
from django.contrib.auth.models import User
from rest_framework import serializers
from rest_framework import permissions
import uuid


# A model that represents a group of users.
# It has a GUID id, a leader (FK to user), and a PostgreSQL array of members ids
class Group(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    leader = models.ForeignKey(User, on_delete=models.CASCADE, related_name="leader")

    def __str__(self):
        return str(self.id)


# A model that represents Users x Groups.
# It has a primary key GUID id, a user id (FK to user), and a group id (FK to group).
class UserxGroup(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    group = models.ForeignKey(Group, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.id)


class GroupSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group
        fields = "__all__"


class UserxGroupSerializer(serializers.Serializer):
    user_id = serializers.IntegerField(required=True)

    def validate_user_id(self, value):
        try:
            user = User.objects.get(id=value)
        except User.DoesNotExist:
            raise serializers.ValidationError("User does not exist")
        if UserxGroup.objects.filter(user=user).exists():
            raise serializers.ValidationError("User is already in a group")
        return user

    def get_group(self, user):
        return Group.objects.filter(leader=self.context["request"].user).first()
