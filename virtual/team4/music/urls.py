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
<<<<<<< HEAD
    path('api/',include(router.urls)),
    #練習cookie
    path('setcookie',views.cookieTest),
=======
    path('update/',views.update,name='update'),
>>>>>>> 1ba563d2ae5ffca60da8aa490ed7dae2a956976d
]
