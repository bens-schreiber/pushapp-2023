from djongo import models

class Entry(models.Model):
    key = models.CharField(max_length=100)
    value = models.CharField(max_length=100)