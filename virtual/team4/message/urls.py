from django.urls import path,include
from . import views
from rest_framework.routers import DefaultRouter
 
# #urlNamespace
# app_name = "message"

router = DefaultRouter()
router.register(r'messages',views.TodoViewSet)

urlpatterns = [
    #http://localhost:8000/store
    path('',views.home,name="home"),  #urlName
    
    #http://localhost:8000/store
    # path('create/',views.create,name="create")
    
    # path('main/',views.main),
    path('api/',include(router.urls)),
]