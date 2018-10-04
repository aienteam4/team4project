from django.shortcuts import render, redirect
from django.http import HttpResponse
from . import models
from donate.models import Product
from django.core.files.storage import FileSystemStorage

# Create your views here.
def siteadm(request):  
    #cookies中沒有name表示沒有登入過
    # print(request.path)
    #轉到登入頁面
    #if 'name' not in request.COOKIES:
        # return redirect("/member/login")
        #theUrl = request.path
        #strJS = "<script>alert('管理員請先登入');location.href='/member/login/?url=" + theUrl + "'</script>"
        #return HttpResponse(strJS)
        
    title = "斗NET直播主資料管理區"
    if request.method == "POST" and request.FILES["productimage"]:
            
            productcid = int(request.POST["productcid"])
            product = Product.objects.get(productid=productcid)
            #檔案上傳到media資料夾中
            myFile = request.FILES["productimage"]
            fs = FileSystemStorage()
            product.productimage = fs.save(myFile.name,myFile)
            product.save()

    # return render(request,'donate/siteadm.html',locals())
    return render(request,'donate/siteadm.html')
    

def index(request): 
    title = "斗NET直播主網"
    return render(request,'donate/site.html',locals())
