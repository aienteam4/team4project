from django.shortcuts import render,redirect
from django.http import HttpResponse
import datetime

# Create your views here.
def welcome(request):
    title="Welcome to EMO."
    return render(request,'home/welcome.html',locals())

def index(request):
    title = "Index"
    return render(request,'home/index.html',locals())

def contact(request):
    title="Contact"
    return render(request,'home/contact.html',locals())

def login_or_register(request):
    title="Please log in or register."
    return render(request,'home/login_or_register.html',locals())