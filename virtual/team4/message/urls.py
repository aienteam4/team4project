from django.urls import path,include
from rest_framework.routers import DefaultRouter
from . import views
# #urlNamespace
app_name = "message"

router = DefaultRouter()
router.register(r'messages',views.MessagesViewSet)

urlpatterns = [
    #http://localhost:8000/message/home
    path('',views.home,name="home"),  #urlName
    
    #http://localhost:8000/store
    # path('create/',views.create,name="create")
    
    # path('main/',views.main),
    path('api/',include(router.urls)),
]