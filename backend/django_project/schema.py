from rest_framework import permissions
from drf_yasg.views import get_schema_view
from drf_yasg import openapi

SWAGGER_APP_INFO = openapi.Info(
    title="Pushapp API",
    default_version="v1",
)

SWAGGER_SCHEMA_VIEW = get_schema_view(
    SWAGGER_APP_INFO,
    public=True,
    permission_classes=(permissions.AllowAny,),
)