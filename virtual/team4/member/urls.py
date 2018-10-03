from django.urls import path
from . import views

#urlNamespace
app_name = "member"

urlpatterns = [
    #http://localhost:8000/member
    path('',views.index,name="index"),  #urlName
    #views表示views.py的module
    #index表示views.py下的function
    #http://localhost:8000/member/login
    path('login/',views.login,name="login"),

    #http://localhost:8000/member/logout
    path('logout/',views.logout,name="logout"),

    
    #http://localhost:8000/member/test
    path('test/',views.testencoding,name="testencoding"),


    #http://localhost:8000/member/register
    path('register/',views.register,name="register"),

    #http://localhost:8000/member/delete/1
    path('delete/<int:id>',views.delete,name="delete"),

    #http://localhost:8000/member/update/1
    path('update/<int:id>', views.update, name="update"),

     #http://localhost:8000/member/show
    path('show/', views.show),
     #http://localhost:8000/member/check/Tom
    path('check/<str:name>',views.checkname, name="checkname"),
]