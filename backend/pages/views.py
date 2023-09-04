from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework.response import Response


@api_view(["GET"])
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


@api_view(["GET"])
def param_hello_world(request, message):
    """
    Uses params to return Hello world plus param message
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
    return Response({"message": "Hello, world, " + message})
