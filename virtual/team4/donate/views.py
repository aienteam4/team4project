from django.shortcuts import render, redirect
from django.http import HttpResponse
from . import models
from donate.models import Product
from django.core.files.storage import FileSystemStorage
import datetime
from django.utils.encoding import smart_str
import base64
from django.core import serializers

# Create your views here.
def siteadm(request):  
    #檢查管理員cookies
    #cookies中沒有nameadm表示沒有登入過
    #print(request.path)
    #轉到登入頁面
    if 'nameadm' not in request.COOKIES:
        # return redirect("/donate")
        theUrl = request.path
        strJS = "<script>alert('管理員請先登入');location.href='/donate?url=" + theUrl + "'</script>"
        return HttpResponse(strJS)


    title = "斗NET直播主資料管理區"
    if request.method == "POST":
      if request.POST["productcid"].isnumeric():
        productcid = int(request.POST["productcid"])
        if Product.objects.filter(productid=productcid):
          product = Product.objects.get(productid=productcid)
          #檔案上傳到media資料夾中
          if "productcimg" in request.FILES:
            myFile = request.FILES["productcimg"]
            fs = FileSystemStorage()
            product.productimage = fs.save(myFile.name,myFile)
            product.save()
          else:
            return HttpResponse("<script>alert('照片輸入錯誤');location.href='/donate/siteadm/'</script>")    
        else:
          return HttpResponse("<script>alert('ID輸入錯誤');location.href='/donate/siteadm/'</script>")
      else:
        return HttpResponse("<script>alert('ID輸入錯誤');location.href='/donate/siteadm/'</script>")

    return render(request,'donate/siteadm.html')
    

def index(request): 
    title = "斗NET直播主網"
    #cookies中沒有name表示沒有登入過
    #print(request.path)
    #轉到登入頁面
    #if 'name' not in request.COOKIES:
        #return redirect("/member/login")
        #theUrl = request.path
        #strJS = "<script>alert('管理員請先登入');location.href='/member/login/?url=" + theUrl + "'</script>"
        #return HttpResponse(strJS)





    # POST 檢查管理員登入帳密
    if request.method == "POST":
        #name=value > key=value
        # print(request.POST.keys())
        login = request.POST["login"]
        pwd = request.POST["password"]
        captcha = request.POST["captcha"]
        # theMember = Members.objects.filter(email=mail,password=pwd).values('name')
        #print()
        if request.session['captcha'] == captcha:
            if (login=="admin" and pwd=="admin"):
            # if 'url' in request.GET:
            #     theUrl = "/donate/siteadm"
            # else:
            #     theUrl = "/donate"
            # print("登入成功：", login)
            # return HttpResponse("<h2>登入成功</h2>")
            # name = theMember[0]['name']
            # strJS = "<script>alert('登入成功');location.href='" + theUrl + "'</script>"
                name = "cookieadmin"
                strJS = "<script>alert('登入成功');location.href='/donate/siteadm'</script>"
                response = HttpResponse(strJS)
                remember = None
            #記住我有打勾保留cookie1天
                if 'remember' in request.POST.keys():
                #    remember = request.POST["remember"]
                    expiresdate = datetime.datetime.now() + datetime.timedelta(days=1)
                    response.set_cookie("nameadm",name,expires=expiresdate)
                else:
                    response.set_cookie("nameadm",name)
                return response
            else:
                # print("登入失敗")
                # return HttpResponse("<h2>登入失敗</h2>")
                return HttpResponse("<script>alert('登入失敗');location.href='/donate/'</script>")
        else:
            return HttpResponse("<script>alert('驗證碼錯誤，請重新輸入');location.href='/donate/'</script>")
    # GET   
    return render(request,'donate/site.html',locals())


def logout(request):
    strJS = "<script>alert('登出');location.href='/donate/'</script>"
    response = HttpResponse(strJS)
    response.delete_cookie('nameadm')
    return response



def captcha(request):    
    from django.contrib.staticfiles import finders
    import random
    # 安裝 pillow  pip install pillow
    from PIL import Image,ImageDraw,ImageFont   
    list1 = random.sample(['0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','H','I'],5)
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