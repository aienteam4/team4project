from django.urls import path,include
from . import views

app_name = "home"

urlpatterns = [
    #http://localhost:8000
    path('',views.welcome,name="welcome"),
    #views表示views.py的module
    #index表示views.py下的function
    path('index/',views.index,name="index"),    
    # path('login/',views.login,name="login"),
    path('makefriends/',include('makefriends.urls')),
    path('contact/',views.contact,name="contact"),
    path('login_or_register/',views.login_or_register,name="login_or_register"),
]