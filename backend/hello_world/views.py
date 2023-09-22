from django.shortcuts import render
from rest_framework import viewsets
from .models import KeyValue, KeyValueSerializer
from rest_framework import permissions

# Basic CRUD operations on the KeyValue class
# This view requires authentication via the all-auth
class KeyValueViewSet(viewsets.ModelViewSet):
    permission_classes = [permissions.IsAuthenticated]

    queryset = KeyValue.objects.all()
    serializer_class = KeyValueSerializer

