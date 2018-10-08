from django.urls import path,include
from . import views

app_name = "music"

#建立 restful api 路由

urlpatterns = [
    path('',views.music,name='music'),
    path('findsong/',views.findsong,name='findsong'),
    path('crud/',views.crud,name='crud'),
    path('search/',views.search,name='search'),
    path('create/',views.create,name='create'),    
    path('delete/',views.delete,name='delete'),    
    path('update/',views.update,name='update'),
    # 紀錄喜愛或討厭歌曲
    path('taste/', views.taste),
    #練習cookie
    path('setsession/',views.set_session),
    path('sessiontest/',views.session_test),
    path('cookietest/',views.cookietest),
    #練習登入
    path('checkEmail/', views.checkEmail, name='checkEmail'),
    # 爬蟲
    path('worldhotsong/', views.worldHotSong),
]
