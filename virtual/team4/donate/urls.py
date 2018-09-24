from django.urls import path
from . import views

#urlNamespace
app_name = "donate"

urlpatterns = [
    #http://localhost:8000/donate
    path('',views.index,name="index"),  #urlName
    #http://localhost:8000/donate
    path('create/',views.create,name="create"),
    path('siteadm/',views.siteadm,name="siteadm"),
    path('delete/<int:id>',views.delete,name="delete"),
    path('update/<int:id>',views.update,name="update"),
]