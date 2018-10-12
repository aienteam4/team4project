from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.db import connection
# from member.modelsmember import Member
from .modelsmember import Member
from member.models import Members
import datetime
from django.utils.encoding import smart_str
import base64
from django.core import serializers

#建立物件
member = Member()

# Create your views here.
def index(request):  
    title = "會員資料管理"
    # with connection.cursor() as cursor:
    #     sql = """select * from members"""
    #     cursor.execute(sql)
    #     members = cursor.fetchall()
    # print(members)

    #ORM
    # print(Members.objects.all())
    
    #呼叫方法
    members = member.all()
    return render(request,'member/index.html',locals())

def my_member(request):  
    title = "會員資料"
    # with connection.cursor() as cursor:
    #     sql = """select * from members"""
    #     cursor.execute(sql)
    #     members = cursor.fetchall()
    # print(members)

    #ORM
    # print(Members.objects.all())
    
    #呼叫方法
    id=request.COOKIES['name_member']
    members = member.single(id)

    return render(request,'member/my_member.html',locals())

def login(request):  
    title = "會員登入"
    # POST  檢查管理員登入帳密
    if request.method == "POST":
        #name=value > key=value
        # print(request.POST.keys())
        mail = request.POST["email"]
        pwd = request.POST["password"]
        captcha = request.POST["captcha"]
        if request.session['captcha'] == captcha:
            theMember = Members.objects.filter(email=mail,password=pwd).values('id')

            if theMember:
                # mid = theMember[0]["id"]
                # print(mid)
                # members=Members.objects.get(id=mid)
                if 'url' in request.GET:
                    theUrl = request.GET['url']
                else:
                    
                    theUrl = "/member/login"
                # print("登入成功：", theMember[0].name)
                #return HttpResponse("<h2>登入成功</h2>")
                # name = theMember[0]['name']
                strJS = "<script>alert('登入成功');location.href='" + theUrl + "'</script>"
                response = HttpResponse(strJS)
                remember = None
                #記住我有打勾保留cookie7天
                if 'remember' in request.POST.keys():
                    #    remember = request.POST["remember"]
                    expiresdate = datetime.datetime.now() + datetime.timedelta(days=7)
                    response.set_cookie("name_member",theMember[0]["id"],expires=expiresdate)
                else:
                    response.set_cookie("name_member",theMember[0]["id"])
                return response
                # return render(request,'member/login.html',locals())
            else:
                # print("登入失敗")
                #return HttpResponse("<h2>登入失敗</h2>")
                return HttpResponse("<script>alert('登入失敗，帳號或密碼有誤!');location.href='/member/login'</script>")
        else:
            return HttpResponse("<script>alert('驗證碼錯誤，請重新輸入');location.href='/member/login'</script>")

    # GET   
    return render(request,'member/login.html',locals())

def login_as_adm(request):  
    title = "管理員登入"
    # POST  檢查管理員登入帳密
    if request.method == "POST":
        #name=value > key=value
        # print(request.POST.keys())
        mail = request.POST["email"]
        pwd = request.POST["password"]
        captcha = request.POST["captcha"]
        if request.session['captcha'] == captcha:
            # theMember = Members.objects.filter(email=mail,password=pwd).values('id')
            if (mail=="admin" and pwd=="admin"):

            # if theMember:
                # if 'url' in request.GET:
                # theUrl = request.GET['url']
                # else:
                name = "cookieadmin"
                strJS = "<script>alert('登入成功');location.href='/member/login_as_adm'</script>"
                response = HttpResponse(strJS)
                remember = None
                #記住我有打勾保留cookie7天
                if 'remember' in request.POST.keys():
                    #    remember = request.POST["remember"]
                    expiresdate = datetime.datetime.now() + datetime.timedelta(days=7)
                    response.set_cookie("name_adm",name,expires=expiresdate)
                else:
                    response.set_cookie("name_adm",name)
                return response
                # return render(request,'member/login.html',locals())
            else:
                # print("登入失敗")
                #return HttpResponse("<h2>登入失敗</h2>")
                return HttpResponse("<script>alert('登入失敗，帳號或密碼有誤!');location.href='/member/login_as_adm'</script>")
        else:
            return HttpResponse("<script>alert('驗證碼錯誤，請重新輸入');location.href='/member/login_as_adm'</script>")
    # GET   
    return render(request,'member/login_as_adm.html',locals())

def logout(request):
    response = HttpResponse("<script>location.href='/member/login'</script>")
    response.delete_cookie('name_member')
    return response

def logout_adm(request):
    response = HttpResponse("<script>location.href='/member/login_as_adm'</script>")
    response.delete_cookie('name_adm')
    return response

def register(request):  
    title = "會員註冊"
    if request.method == "POST":
        #接收表單傳過來的資料
        name = request.POST["name"]
        email = request.POST["email"]
        password = request.POST["password"]
        job = request.POST["job"]
        birthday = request.POST["birthday"]
        gender = request.POST["gender"]

        #將資料寫進資料庫
        # with connection.cursor() as cursor:
        #     sql = """insert into members(name,email,password,job,birthday))
        #              values(%s,%s,%s,%s,%s)"""
        #     #tuple
        #     cursor.execute(sql,(name,email,password,job,birthday))
        _member = (name,email,password,job,birthday,gender)
        member.create(_member)
        strJS = "<script>alert('登入成功');location.href='/member/register'</script>"
        response = HttpResponse(strJS)
        #轉到會員的首頁上
        return redirect("/member/login")
    return render(request,'member/register.html',locals())


def delete(request, id):
    # with connection.cursor() as cursor:
    #     sql = """delete from members where id=%s"""
    #     #tuple
    #     cursor.execute(sql,(id,))
    member.delete(id)
    return redirect("/member/index")

    # return HttpResponse("<h2>" + str(id) + "</h2>")

def update(request, id):
    #步驟二
    if request.method == "POST":
        #接收表單傳過來的資料
        name = request.POST["name"]
        email = request.POST["email"]
        password = request.POST["password"]
        job = request.POST["job"]
        birthday = request.POST["birthday"]
        gender = request.POST["gender"]
        #將資料寫進資料庫
        # with connection.cursor() as cursor:
        #     sql = """update members set name=%s,email=%s,password=%s,age=%s
        #              where id=%s"""
        #     #tuple
        #     cursor.execute(sql,(name,email,password,age,id))
        _member = (name,email,password,job,birthday,gender,id)
        member.update(_member)
        #轉到會員的首頁上
        return redirect("/member/index")
    membersingle = member.single(id)
    return render(request,'member/update.html',locals())

def my_member_update(request, id):
    #步驟二
    if request.method == "POST":
        #接收表單傳過來的資料
        name = request.POST["name"]
        email = request.POST["email"]
        password = request.POST["password"]
        job = request.POST["job"]
        birthday = request.POST["birthday"]
        gender = request.POST["gender"]
        #將資料寫進資料庫
        # with connection.cursor() as cursor:
        #     sql = """update members set name=%s,email=%s,password=%s,age=%s
        #              where id=%s"""
        #     #tuple
        #     cursor.execute(sql,(name,email,password,age,id))
        _member = (name,email,password,job,birthday,gender,id)
        member.update(_member)
        #轉到會員的首頁上
        return redirect("/member/my_member")
    #步驟一
    # with connection.cursor() as cursor:
    #     sql = """select * from members where id=%s"""
    #     #tuple
    #     cursor.execute(sql,(id,))
    #     member = cursor.fetchone()
    membersingle = member.single(id)
    return render(request,'member/my_member_update.html',locals())

def captcha(request):    
    from django.contrib.staticfiles import finders
    import random
    # 安裝 pillow  pip install pillow
    from PIL import Image,ImageDraw,ImageFont   
    list1 = random.sample(['2','3','4','5','6','7','8','9','A','B','C','D','E','F','H','J','K','M','N'],5)
    txt = ''.join(list1)    
    
    # todo 將產生的數字及字母存到session中
    request.session['captcha'] = txt  
    
    width = 15 * 4
    height = 30
    image = Image.new('RGB', (width, height), (255, 255, 255))    
    # 下載字體https://fonts.google.com/
    thefont = finders.find('fonts/Kavivanar-Regular.ttf')
    font = ImageFont.truetype(thefont, 16)   
    draw = ImageDraw.Draw(image)
    draw.text((5, 5), txt,font=font, fill=(255, 0, 0))
    response = HttpResponse(content_type="image/png")
    image.save(response, "PNG")
    return response
