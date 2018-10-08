"""firstproject URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from rest_framework.routers import DefaultRouter
from product import views

router = DefaultRouter()
router.register('product', views.ProductViewSet)
router.register(r'songlist', views.SongListViewSet)
router.register('category', views.CategoryViewSet)
router.register(r'Friends_Chat', views.Friends_ChatViewSet)

urlpatterns = [
    #http://localhost:8000/admin
    path('admin/', admin.site.urls),
    #http://localhost:8000
    path('',include('home.urls')),  #從project的urls.py去載入app下的urls.py
    path('member/',include('member.urls')),
    path('music/',include('music.urls')),
    path('makefriends/',include('makefriends.urls')),
    path('donate/',include('donate.urls')),
    path('message/',include('message.urls')),
    #http://localhost:8000/api/product
    #http://localhost:8000/api/
    path('api/', include(router.urls))
]+static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)

