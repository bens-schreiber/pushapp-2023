from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework.response import Response
from drf_yasg import openapi
from drf_yasg.utils import swagger_auto_schema

@swagger_auto_schema(
    method='get',  # Specify the HTTP method
    responses={200: 'Success response description'},
)
@api_view(['GET'])
def hello_world(request):
    """
    This is a brief description of what this endpoint does.
    ---
    parameters:
      - name: parameter_name
        description: Description of the parameter
        required: true
        type: string
    responses:
      200:
        description: Successful response description
    """
    return Response({"message": "Hello, world!"})