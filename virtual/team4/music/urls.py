from django.urls import path
from . import views
app_name = "music"

urlpatterns = [
    path('',views.music,name='music'),
    path('findsong/',views.findsong,name='findsong'),
]
