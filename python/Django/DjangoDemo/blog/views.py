from django.http import HttpResponse
from django.shortcuts import render


# Create your views here.
def index(req):
    return HttpResponse('<h1>hello , welcome to django world.</h1>')

def hello(req):
    return HttpResponse("hello")