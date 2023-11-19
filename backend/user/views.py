from typing import Dict, Optional
import requests
from rest_framework import permissions
from rest_framework.response import Response
from rest_framework.views import APIView
from drf_yasg.utils import swagger_auto_schema
from .models import GoogleViewSerializer, UserSerializer, UserTokenSerializer
from rest_framework.utils import json
from django.contrib.auth.models import User
from rest_framework_simplejwt.tokens import RefreshToken


class UserView(APIView):
    permission_classes = [permissions.IsAuthenticated]
    serializer_class = UserSerializer

    @swagger_auto_schema(
        responses={200: UserSerializer()},
        operation_description="Get the current user",
    )
    def get(self, request, format=None):
        return Response(UserSerializer(request.user).data)


class GoogleView(APIView):
    @swagger_auto_schema(
        request_body=GoogleViewSerializer, responses={200: UserTokenSerializer()}
    )
    def post(self, request):
        data = validate_token(request.data.get("token"))

        if data is None:
            return Response({"message": "Invalid or expired."})

        # create user if not exist
        try:
            user = User.objects.get(email=data["email"])
        except User.DoesNotExist:
            user = User()
            user.username = data["email"]
            user.email = data["email"]
            user.save()

        token = RefreshToken.for_user(user)
        response = UserTokenSerializer(
            data={
                "username": user.username,
                "access_token": str(token.access_token),
                "refresh_token": str(token),
            }
        )

        response.is_valid(raise_exception=True)
        return Response(response.data)


def validate_token(token: str) -> Optional[Dict[str, str]]:
    payload = {"access_token": token}
    r = requests.get("https://www.googleapis.com/oauth2/v2/userinfo", params=payload)
    data = json.loads(r.text)

    if "error" in data:
        return None

    return data
