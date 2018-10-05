from django.urls import path
from . import views

#urlNamespace
app_name = "donate"

urlpatterns = [
    #http://localhost:8000/donate
    path('',views.index,name="index"),  #urlName
    #http://localhost:8000/donate/siteadm
    path('siteadm/',views.siteadm,name="siteadm"),
]