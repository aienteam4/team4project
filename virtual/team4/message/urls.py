from django.urls import path
from . import views

#urlNamespace
app_name = "message"

urlpatterns = [
    #http://localhost:8000/store
    path('',views.index,name="index"),  #urlName
    #http://localhost:8000/store
    # path('create/',views.create,name="create")

]