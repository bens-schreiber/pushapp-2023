from rest_framework import permissions
from rest_framework.response import Response
from rest_framework.views import APIView
from drf_yasg.utils import swagger_auto_schema
from .models import UserSerializer
from allauth.socialaccount.providers.google.views import GoogleOAuth2Adapter
from rest_auth.registration.views import SocialLoginView

class UserView(APIView):
    permission_classes = [permissions.IsAuthenticated]
    serializer_class = UserSerializer

    @swagger_auto_schema(
        responses={200: UserSerializer()},
        operation_description="Get the current user",
    )
    def get(self, request, format=None):
        return Response(UserSerializer(request.user).data)

class GoogleLogin(SocialLoginView):
    adapter_class = GoogleOAuth2Adapter