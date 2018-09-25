from django.urls import path,include
from . import views
from rest_framework.routers import DefaultRouter

app_name = "music"

router = DefaultRouter()
router.register(r'songlist',views.SonglistViewSet)

urlpatterns = [
    path('',views.music,name='music'),
    path('findsong/',views.findsong,name='findsong'),
    path('crud/',views.crud,name='crud'),
    path('search/',views.search,name='search'),
    path('create/',views.create,name='create'),    
    path('delete/',views.delete,name='delete'),
    path('api/',include(router.urls)),
    #練習cookie
    path('setcookie',views.cookieTest),
]
