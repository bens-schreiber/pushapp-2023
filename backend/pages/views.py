from rest_framework import generics

from pages.models import Entry, EntrySerializer

class HelloWorld(generics.RetrieveUpdateDestroyAPIView, generics.ListCreateAPIView):
    queryset = Entry.objects.all()
    serializer_class = EntrySerializer