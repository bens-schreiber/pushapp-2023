from .models import Token, TokenSerializer
from rest_framework import permissions
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from drf_yasg.utils import swagger_auto_schema
from django.shortcuts import get_object_or_404
from group.models import Group
from group.models import UserxGroup
from django.contrib.auth.models import User


class TokenViewSet(APIView):
    permission_classes = [permissions.IsAuthenticated]
    serializer_class = TokenSerializer

    @swagger_auto_schema(
        operation_description="Get all tokens of the current user",
        responses={200: TokenSerializer(many=True)},
    )
    def get(self, request, format=None):
        tokens = Token.objects.filter(holder=request.user)
        serializer = TokenSerializer(tokens, many=True)
        return Response(serializer.data)

    @swagger_auto_schema(
        operation_description="Update the tokens value by 1, and select a new token holder",
        responses={200: TokenSerializer(many=True)},
    )
    def patch(self, request, format=None):
        token = get_object_or_404(Token, holder=request.user)
        
        # Increment the token
        token.score += 1

        # Make the token holder a random user in the group except the current holder
        group = token.group
        users = UserxGroup.objects.filter(group=group).values("user")
        users = users.exclude(id=request.user.id)
        token.holder = get_object_or_404(User, id=users.order_by("?").first()["user"])

        token.save()
        serializer = TokenSerializer(token)
        return Response(serializer.data, status=status.HTTP_200_OK)
