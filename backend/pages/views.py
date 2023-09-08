from rest_framework.response import Response
from rest_framework.request import Request
from rest_framework.views import APIView
from drf_yasg import openapi
from drf_yasg.utils import swagger_auto_schema

from pages.models import Entry

import pages.impl.hello_world as impl

"""
When we are creating a view that is overloaded (IE, multiple HTTP methods on one endpoint), 
we will use the APIView CBV (Class Based View).

However, if a view uses only one method, we will use the function-based view (FBV)

In both cases, swagger documentation is generated from the docstrings of the view.

In both cases, if a view is more complex (cannot be represented in only the form return Response(...)),
we will move the implementation to a separate file
"""


class HelloWorld(APIView):
    """
    A set of example endpoints for future reference
    """

    @swagger_auto_schema(
        operation_description="Returns a 'Hello World' string",
        responses={
            200: "Hello, world!",
        },
    )
    def get(self, request: Request):
        return Response({"message": "Hello, world!"}, status=200)

    @swagger_auto_schema(
        operation_description="Posts an entry to pages_entry",
        request_body=openapi.Schema(
            type=openapi.TYPE_OBJECT,
            required=["key, value"],
            properties={
                "key": openapi.Schema(type=openapi.TYPE_STRING),
                "value": openapi.Schema(type=openapi.TYPE_STRING),
            },
        ),
        responses={
            201: "Created",
        },
    )
    def post(self, request: Request):
        return impl.hello_world_post(request)

    @swagger_auto_schema(
        operation_description="Updates a generic entry in pages_entry",
        request_body=openapi.Schema(
            type=openapi.TYPE_OBJECT,
            required=["key"],
            properties={
                "key": openapi.Schema(type=openapi.TYPE_STRING),
            },
        ),
        responses={
            200: "Entry updated",
            404: "Entry does not exist",
        },
    )
    def put(self, request: Request):
        return impl.hello_world_put(request)

    @swagger_auto_schema(
        operation_description="Deletes a generic entry in pages_entry",
        request_body=openapi.Schema(
            type=openapi.TYPE_OBJECT,
            required=["key"],
            properties={
                "key": openapi.Schema(type=openapi.TYPE_STRING),
            },
        ),
        responses={200: "Entry deleted", 404: "Entry does not exist"},
    )
    def delete(self, request: Request):
        return impl.hello_world_delete(request)
