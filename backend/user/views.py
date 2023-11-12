from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework import permissions
from rest_framework.response import Response
from .models import UserSerializer
from drf_yasg.utils import swagger_auto_schema

class UserView(APIView):
    permission_classes = [permissions.IsAuthenticated]
    serializer_class = UserSerializer

    @swagger_auto_schema(
        responses={200: UserSerializer()},
        operation_description="Get the current user",
    )
    def get(self, request, format=None):
        return Response(UserSerializer(request.user).data)


