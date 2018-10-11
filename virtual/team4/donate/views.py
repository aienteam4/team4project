from django.shortcuts import render, redirect
from django.http import HttpResponse
from . import models
from donate.models import Product, Apnews
from django.core.files.storage import FileSystemStorage
import datetime
from django.utils.encoding import smart_str
import base64
from django.core import serializers
import json
import requests
from bs4 import BeautifulSoup
import re
import urllib
from django.db import connection
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
    #轉到登入頁面
    if 'name_member' not in request.COOKIES:
        theUrl = request.path
        strJS = "<script>alert('會員請先登入 非會員請註冊');location.href='/login_or_register/?url=" + theUrl + "'</script>"
        return HttpResponse(strJS)
    else:
        if request.method == "POST":
            #name=value > key=value
            login = request.POST["login"]
            pwd = request.POST["password"]
            captcha = request.POST["captcha"]
            if request.session['captcha'] == captcha:
                if (login=="admin" and pwd=="admin"):
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


            #Back to Index
    return render(request,'donate/site.html',locals())

def apnews(request):
    #Get news from Apple
    url = 'https://tw.appledaily.com/new/realtime'   #選擇網址
    headers_data = {
        'user-agent' : 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'
    }
    responsenews = requests.get(url, headers=headers_data)
    soup = BeautifulSoup(responsenews.text,'lxml')
    items = soup.select('ul.rtddd > li.rtddt')

    Apnews.objects.all().delete()

    for item in items:
        time = item.find('time').string
        category = item.find('h2').string
        title = item.find('h1').get_text()
        link = item.find('a').get('href')
        match = re.search(r'(?P<title>.+)\((?P<count>\d+)\)',item.find('h1').get_text())
        count = 0
        try:
           title = match.group("title")
           count = match.group("count")
        except AttributeError:
            pass
  
        Apnews.objects.create(time = time, category = category, title = title, link = link)
        apnewsall = serializers.serialize("json", Apnews.objects.all())
    return HttpResponse(apnewsall, content_type="application/json")

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
    list1 = random.sample(['0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','H'],5)
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