from django.urls import path
from rest_framework import permissions
from drf_yasg.views import get_schema_view
from drf_yasg import openapi
from django.contrib import admin
from group.views import GroupView, UserxGroupView
from tokens.views import TokenViewSet
from user.views import UserView, GoogleView


SWAGGER_APP_INFO = openapi.Info(
    title="Pushapp API",
    default_version="v1",
)

SWAGGER_SCHEMA_VIEW = get_schema_view(
    SWAGGER_APP_INFO,
    public=True,
    permission_classes=(permissions.AllowAny,),
)

urlpatterns = [
    path(
        "",
        SWAGGER_SCHEMA_VIEW.with_ui("swagger", cache_timeout=0),
        name="schema-swagger-ui",
    ),
    path(
        "swagger<format>/",
        SWAGGER_SCHEMA_VIEW.without_ui(cache_timeout=0),
        name="schema-json",
    ),
    path(
        "redoc/",
        SWAGGER_SCHEMA_VIEW.with_ui("redoc", cache_timeout=0),
        name="schema-redoc",
    ),
    path("google/", GoogleView.as_view(), name="google_login"),
    path("admin/", admin.site.urls),
    path("token/", TokenViewSet.as_view()),
    path("group/", GroupView.as_view()),
    path("group/user/", UserxGroupView.as_view()),
    path("user/", UserView.as_view()),
]
