from django.urls import path,include
from . import views

app_name = "music"

urlpatterns = [
    path('',views.music,name='music'),
    path('findsong/',views.findsong,name='findsong'),
    path('crud/',views.crud,name='crud'),
    path('search/',views.search,name='search'),
    path('create/',views.create,name='create'),    
    path('delete/',views.delete,name='delete'),    
    path('update/',views.update,name='update'),
    #練習cookie
    path('setsession',views.set_session),
    path('sessiontest',views.session_test),
    path('cookietest',views.cookietest)
]
