from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.db import connection
# from .modelsfriends import Friends_Talk
import datetime
from django.utils.encoding import smart_str
import base64
from .models import Friends_Chat
# from .serializers import Friends_ChatSerializer
from rest_framework import viewsets

# friend = Friends_Talk()

def friends(request):
    return render(request,'makefriends/friends.html',locals())

# restful api CRUD
def api_message(request):  
    title = "Restful api -- makefriends"
    return render(request,'makefriends/api_message.html',locals())

def pop_chat(request):
    return render(request,'makefriends/pop_chat.html')

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

# def delete(request, id):
#     friend.delete(id)
#     return redirect("/message_record/")

# def update(request, id):
#     if request.method == "POST":
#         #接收表單傳過來的資料
#         memberId = request.POST["memberId"]
#         messages = request.POST["message"]  
#         messagesUpdate = request.POST["messagesUpdate"]  

#         friends = (memberId,messages,messagesUpdate,id)
#         friend.update(friends)
#         return redirect("/message_record/")

#     friendsingle = friend.single(id)
#     return render(request,'message_update.html',locals())

# def testencoding(request):
#     response = HttpResponse("<h2>encoding test</h2>")
#     # u1 = u"中文"
#     # u2 = smart_str(u1)
#     u2 = bytes("中文","utf-8").decode("utf-8")
#     # response.set_cookie("u1",u1)
#     response.set_cookie("username",u2)
#     return response

# 傳訊息進資料庫
# def send(request, messagesUpdate):
    # time.sleep(1)
    # if request.method == "POST":
    #     #接收表單傳過來的資料
    #     # memberId = request.POST["memberId"]
    #     messages = request.POST["messages"]  
    #     Message = "{}/n{}".format(messages,messagesUpdate)
    #     return HttpResponse(Message)

    # #將資料寫進資料庫
    # Friends_Chat.objects.create(id=id.objects.get(id=id),messages=messages,messagesUpdate=messagesUpdate)
    # return HttpResponse(Message)
    # messages = request.GET["messages"]
    # Message = "{}     ({})".format(messages,messagesUpdate)
    # print(messages)
    # return HttpResponse(Message)


