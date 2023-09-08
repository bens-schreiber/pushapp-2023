from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.request import Request
from pages.models import Entry


@api_view(["POST"])
def hello_world(request: Request):
    """
    This is a brief description of what this endpoint does.
    ---
    parameters:
      - name: parameter_name
        description: Description of the parameter
        required: true
        type: string
    responses:
      201:
        description: Successful response description
    """

    e = Entry()
    e.blog = {
        'name': 'Djongo'
    }
    e.headline = 'The Django MongoDB connector'
    e.save()

    return Response({"message": "Hello, world!"})
