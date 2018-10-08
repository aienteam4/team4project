from django.urls import path,include
from .import views
from rest_framework.routers import DefaultRouter #建立restful api路由

app_name = "makefriends"

#建立 restful api 路由
# router = DefaultRouter()
# router.register(r'Friends_Chat', views.Friends_ChatViewSet)

urlpatterns = [
    path('',views.friends,name='friends'),
    path('send/<str:messageUpdate>/',views.send),
    # path('hello/<str:age>/',views.hello),
    path('message_api/',views.message_api,name='message_api'),
    # path('message_api/',include(router.urls)),
    
]