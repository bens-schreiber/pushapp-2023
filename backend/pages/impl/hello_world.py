from pages.models import Entry
from rest_framework.response import Response
from rest_framework.request import Request
import pages.impl.util as util


def hello_world_post(request: Request) -> Response:
    if (r := util.validate_params(request, "key", "value")) is not None:
        return r

    util.insert_pages_entry(request.data["key"], request.data["value"])

    return Response({"message": "Created"}, status=201)


def hello_world_put(request: Request) -> Response:
    if (r := util.validate_params(request, "key")) is not None:
        return r

    if not Entry.objects.filter(key=request.data["key"]).exists():
        return Response({"message": "Entry does not exist"}, status=404)

    util.update_pages_entry(Entry.objects.get(key=request.data["key"]))

    return Response({"message": "Entry updated"}, status=200)


def hello_world_delete(request: Request) -> Response:
    if (r := util.validate_params(request, "key")) is not None:
        return r

    if not Entry.objects.filter(key=request.data["key"]).exists():
        return Response({"message": "Entry does not exist"}, status=404)

    Entry.objects.get(key=request.data["key"]).delete()

    return Response({"message": "Entry deleted"}, status=200)
