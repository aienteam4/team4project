from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.db import connection
from .modelsfriends import Friends_Talk
import datetime
from django.utils.encoding import smart_str
import base64
from .models import Friends_Chat
from .serializers import Friends_ChatSerializer
from rest_framework import viewsets

friend = Friends_Talk()

# def index(request):  
#     #ORM
#     # print(Friends_Chat.objects.all())
    
#     #讀出所有交友資料
#     friends = friend.all()
#     return render(request,'makefriends/message_record.html',locals())

# def login(request):  
#     title = "會員登入"
#     # POST
#     if request.method == "POST":
#         #name=value > key=value
#         # print(request.POST.keys())
#         mail = request.POST["email"]
#         pwd = request.POST["password"]

#         theMember = Member.objects.filter(email=mail,password=pwd).values('name')
#         if theMember:
#             if 'url' in request.GET:
#                 theUrl = request.GET['url']
#             else:
#                 theUrl = "/"
#             # print("登入成功：", theMember[0].name)
#             name = theMember[0]['name']
#             strJS = "<script>alert('登入成功');location.href='"+ theUrl +"'</script>"
#             response = HttpResponse(strJS)
            
#             remember = None
#             if 'remember' in request.POST.keys():
#                 #  remember = request.POST["remember"]    
#                 expiresdate = datetime.datetime.now()+datetime.timedelta(days=365)
#                 response.set_cookie("name", name, expires=expiresdate)
#             else:
#                 response.set_cookie("name", name)
#             return response
#         else:
#             # print("登入失敗")
#             return HttpResponse("<script>alert('登入失敗');location.href='/member/login'</script>")

        
#         # print(email, password, remember)

#     # GET   
#     return render(request,'member/login.html',locals())

# def logout(request):
#     response = HttpResponse("<script>location.href='/'</script>")
#     response.delete_cookie("name") 
#     return response
def friends(request):
    return render(request,'friends.html')

def delete(request, id):
    friend.delete(id)
    return redirect("/message_record/")

def update(request, id):
    if request.method == "POST":
        #接收表單傳過來的資料
        memberId = request.POST["memberId"]
        message = request.POST["message"]  
        messageUpdate = request.POST["messageUpdate"]  

        friends = (memberId,message,messageUpdate,id)
        friend.update(friends)
        return redirect("/message_record/")

    friendsingle = friend.single(id)
    return render(request,'message_update.html',locals())

def testencoding(request):
    response = HttpResponse("<h2>encoding test</h2>")
    # u1 = u"中文"
    # u2 = smart_str(u1)
    u2 = bytes("中文","utf-8").decode("utf-8")
    # response.set_cookie("u1",u1)
    response.set_cookie("username",u2)
    return response

def send(request,userid):
    # time.sleep(10)
    message = request.GET["message"]
    messageUpdate = request.GET["messageUpdate"]
    return HttpResponse(userid,message,messageUpdate)

def message(request):
    # time.sleep(1)
    memberId = request.POST["memberId"]
    message = request.POST["message"]  
    messageUpdate = request.POST["messageUpdate"]

    #將資料寫進資料庫
    Friends_Chat.objects.create(memberId=memberId.objects.get(memberId=memberId),message=message,messageUpdate=messageUpdate)
    return HttpResponse(message)

# restful api
class Friends_ChatViewSet(viewsets.ModelViewSet):
    queryset = Friends_Chat.objects.all()
    serializer_class = Friends_ChatSerializer
