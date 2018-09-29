from django.urls import path,include
from . import views
from rest_framework.routers import DefaultRouter #建立restful api路由

app_name = "music"

#建立 restful api 路由
router = DefaultRouter()
router.register(r'songlist', views.SongListViewSet)

urlpatterns = [
    path('',views.music,name='music'),
    path('findsong/',views.findsong,name='findsong'),
    path('crud/',views.crud,name='crud'),
    path('search/',views.search,name='search'),
    path('create/',views.create,name='create'),    
    path('delete/',views.delete,name='delete'),    
    path('update/',views.update,name='update'),
    #練習cookie
    path('setsession/',views.set_session),
    path('sessiontest/',views.session_test),
    path('cookietest/',views.cookietest),
    #練習登入
    path('checkEmail/', views.checkEmail, name='checkEmail'),
    # 練習restful api
    path('api/', include(router.urls)),
]
