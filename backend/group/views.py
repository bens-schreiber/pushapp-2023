from rest_framework import permissions
from .models import Group, GroupSerializer, UserxGroupSerializer
from .models import UserxGroup
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from drf_yasg.utils import swagger_auto_schema


class GroupView(APIView):
    permission_classes = [permissions.IsAuthenticated]
    serializer_class = GroupSerializer

    @swagger_auto_schema(
        operation_description="Create a group for the current user",
    )
    def post(self, request, format=None):
        if UserxGroup.objects.filter(user=request.user).exists():
            return Response(
                {"error": "User is already in a group"},
                status=status.HTTP_400_BAD_REQUEST,
            )

        group = Group(leader=request.user)
        group.save()
        userxgroup = UserxGroup(user=request.user, group=group)
        userxgroup.save()
        serializer = GroupSerializer(group)
        return Response(serializer.data, status=status.HTTP_201_CREATED)

    @swagger_auto_schema(
        operation_description="Get the group of the current user",
    )
    def get(self, request, format=None):
        groups = Group.objects.filter(leader=request.user)
        serializer = GroupSerializer(groups, many=True)
        return Response(serializer.data)

    @swagger_auto_schema(
        operation_description="Delete the group of the current user",
    )
    def delete(self, request, format=None):
        group = Group.objects.filter(leader=request.user).first()
        if group is None:
            return Response(
                {"error": "User is not a leader of any group"},
                status=status.HTTP_400_BAD_REQUEST,
            )

        userxgroup = UserxGroup.objects.filter(group=group)
        userxgroup.delete()
        group.delete()

        return Response(status=status.HTTP_204_NO_CONTENT)


class UserxGroupView(APIView):
    permission_classes = [permissions.IsAuthenticated]
    serializer_class = UserxGroupSerializer

    @swagger_auto_schema(
        operation_description="Add a user to the group of the current user",
        request_body=UserxGroupSerializer,
    )
    def post(self, request, format=None):
        serializer = UserxGroupSerializer(
            data=request.data, context={"request": request}
        )
        serializer.is_valid(raise_exception=True)
        user = serializer.validated_data["user_id"]
        group = serializer.get_group(user)
        userxgroup = UserxGroup(user=user, group=group)
        userxgroup.save()
        serializer = UserxGroupSerializer(userxgroup)
        return Response(serializer.data, status=status.HTTP_201_CREATED)
