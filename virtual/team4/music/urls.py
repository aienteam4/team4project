from django.urls import path,include
from . import views
from rest_framework.routers import DefaultRouter

app_name = "music"

router = DefaultRouter()
router.register(r'songlist',views.SonglistViewSet)

urlpatterns = [
    path('',views.music,name='music'),
    path('findsong/',views.findsong,name='findsong'),
    path('api/',include(router.urls)),
]
