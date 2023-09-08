from pages.models import Entry
from rest_framework.response import Response
from rest_framework.request import Request

def insert_pages_entry() -> None:
    e = Entry()
    e.key = "key"
    e.value = "value"
    e.save()
    return 

def update_pages_entry(id: str) -> None:
    e: Entry = Entry.objects.get(key=id)
    e.key = "key updated"
    e.value = "value updated"
    e.save()