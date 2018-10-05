from django.urls import path,include
from . import views

app_name = "home"

urlpatterns = [
    #http://localhost:8000
    path('',views.welcome,name="welcome"),
    #views表示views.py的module
    #index表示views.py下的function
    path('index/',views.index,name="index"),
    path('makefriends/',views.makefriends,name="makefriends"),    
    path('login/',views.login,name="login"),
    path('contact/',views.contact,name="contact"),
<<<<<<< HEAD
    
    path('main/',views.main),
=======
    path('login_or_register/',views.login_or_register,name="login_or_register"),

    path('main/',views.main)
>>>>>>> dd1ddfa0242e7e24822dbc5d8c43bf1f6fd865de
]