from django.urls import path
from . import views

#urlNamespace
app_name = "member"

urlpatterns = [
    #http://localhost:8000/member
    path('',views.index,name="index"),  
    path('login/',views.login,name="login"),
    path('login_as_adm/',views.login_as_adm,name="login_as_adm"),
    path('logout/',views.logout,name="logout"),
    # path('test/',views.testencoding,name="testencoding"),
    path('register/',views.register,name="register"),
    path('delete/<int:id>',views.delete,name="delete"),
    path('update/<int:id>', views.update, name="update"),
    path('show/', views.show),
     #http://localhost:8000/member/check/Tom
    # path('check/<str:name>',views.checkname, name="checkname"),
]