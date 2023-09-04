from django.urls import path
from rest_framework import permissions
from drf_yasg.views import get_schema_view
from drf_yasg import openapi
from pages.views import hello_world, param_hello_world

app_info = openapi.Info(
    title="Pushapp API",
    default_version="v1",
)

schema_view = get_schema_view(
    app_info,
    public=True,
    permission_classes=(permissions.AllowAny,),
)

urlpatterns = [
    path(
        "",
        schema_view.with_ui("swagger", cache_timeout=0),
        name="schema-swagger-ui",
    ),
    path(
        "swagger<format>/", schema_view.without_ui(cache_timeout=0), name="schema-json"
    ),
    path("redoc/", schema_view.with_ui("redoc", cache_timeout=0), name="schema-redoc"),
    path("hello-world", hello_world, name="hello_world"),
    path(
        "param-hello-world/<str:message>",
        param_hello_world,
        name="hello_world_endpoint",
    ),
]
