from django.urls import path

from django.contrib import admin
from django_project.schema import SWAGGER_SCHEMA_VIEW
from group.views import GroupView, UserxGroupView
from tokens.views import TokenViewSet
from user.views import UserView, GoogleView

urlpatterns = [

    # SWAGGER
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

    # AUTH
    path("google/", GoogleView.as_view(), name="google_login"),
    path("admin/", admin.site.urls),

    # API
    path("token/", TokenViewSet.as_view()),
    path("group/", GroupView.as_view()),
    path("group/user/", UserxGroupView.as_view()),
    path("user/", UserView.as_view()),
]
