from django.shortcuts import render,redirect
from django.http import HttpResponse
import datetime

# Create your views here.
def welcome(request):
    title="Welcome to EMO."
    return render(request,'home/welcome.html',locals())

def index(request):
    title = "首頁"
    desc = "This is a web page."
    now = datetime.datetime.now()

    datas = [
    {"name":"Jack","age":25,"email":"Jack@gmail.com"},
    {"name":"Mary","age":18,"email":"Mary@gmail.com"},
    {"name":"Tom","age":32,"email":"Tom@gmail.com"},
    ]
    #print(locals())
    return render(request,'home/index.html',locals())

def makefriends(request):
    title="Let's make friends!"
    return render(request,'home/makefriends.html',locals())

def about(request):
    title="About us"
    return render(request,'home/about.html',locals())
    

def contact(request):
    title="Contact"
    return render(request,'home/contact.html',locals())

def login(request):
    title="Please log in."
    return render(request,'home/login.html',locals())

def main(request):
    return redirect("/")