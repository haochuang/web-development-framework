from django.shortcuts import render, render_to_response
from django.http import HttpResponse

# Create your views here.


def index(req):
    return_dir = {}
    return_dir['user'] = 'lifuhao'
    return render_to_response('app01/home/index.html', return_dir)



def auth(req):
    print req.GET
    username, password = req.GET['username'], req.GET['password']
    if username == 'lifuhao' and password == '1234':
        return HttpResponse('welecome user %s' % username)
    else:
        return HttpResponse('wrong!')

    return  HttpResponse('data submited')