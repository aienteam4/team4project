from django.shortcuts import render, redirect
from django.http import HttpResponse
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
    products = Product.objects.all()
    return render(request,'donate/siteadm.html',locals())

def index(request): 
    title = "斗NET直播主網"
    return render(request,'donate/site.html',locals())
