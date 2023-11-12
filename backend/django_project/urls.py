from django.urls import path, include
from rest_framework import permissions
from drf_yasg.views import get_schema_view
from drf_yasg import openapi
from django.contrib import admin
from group.views import GroupView, UserxGroupView
from tokens.views import TokenViewSet
from user.views import UserView

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
    path('accounts/', include('allauth.urls')),
    path('admin/', admin.site.urls),
    path('token/', TokenViewSet.as_view()),
    path('group/', GroupView.as_view()),
    path('group/user/', UserxGroupView.as_view()),
    path('user/', UserView.as_view()),

]
