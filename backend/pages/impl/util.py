from rest_framework.request import Request
from rest_framework.response import Response
from pages.models import Entry
from typing import List


def entry_exists(key: str) -> bool:
    try:
        Entry.objects.get(key=key)
        return True
    except Entry.DoesNotExist:
        return False


def validate_params(request: Request, *params) -> None | Response:
    if not all(i in request.data for i in params):
        return Response({"message": "key or value parameter not found"}, status=400)
    return None


def insert_pages_entry(key: str, value: str) -> None:
    e = Entry()
    e.key = key
    e.value = value
    e.save()
    return


def update_pages_entry(e: Entry) -> None:
    e.key = e.key
    e.value = e.value + " updated"
    e.save()
