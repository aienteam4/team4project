from django.shortcuts import render, redirect
from django.http import HttpResponse
from donate.models import Product
from django.core.files.storage import FileSystemStorage

# Create your views here.
def index(request):  
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
    return render(request,'donate/site.html',locals())

def delete(request,id):  
    product = Product.objects.get(productid=id)
    product.delete()
    return redirect('/donate/')

def update(request,id):  

    #步驟二
    if request.method == "POST" and request.FILES["productimage"]:
        #接收表單傳過來的資料
        product = Product.objects.get(productid=id)
        product.modelnumber = request.POST["modelnumber"]
        product.modelname = request.POST["modelname"]
        product.categoryid = request.POST["categoryid"]

        #檔案上傳到media資料夾中
        myFile = request.FILES["productimage"]
        fs = FileSystemStorage()
        product.productimage = fs.save(myFile.name,myFile)
        
        #將資料寫進資料庫
        product.save()
        return redirect('/donate/')

    #步驟一 GET 回傳空白的表單

    return render(request,'donate/update.html',locals())

def create(request):
    # print(request.path)
    #cookies中沒有name表示沒有登入過
    #轉到登入頁面
    #if 'name' not in request.COOKIES:
        #theUrl = request.path
        #return redirect("/member/login/?url=" + theUrl)
        # return HttpResponse("<script>alert('購物前，請先登入');location.href='/member/login'</script>")
       
    title="直播主新增"

    #步驟二
    if request.method == "POST" and request.FILES["productimage"]:
        #接收表單傳過來的資料
        categoryid = request.POST["categoryid"]
        modelnumber = request.POST["modelnumber"]
        modelname = request.POST["modelname"]
        description = request.POST["description"]

        #檔案上傳到media資料夾中
        myFile = request.FILES["productimage"]
        fs = FileSystemStorage()
        productimage = fs.save(myFile.name,myFile)

        #將資料寫進資料庫
        Product.objects.create(categoryid=categoryid, modelnumber=modelnumber,modelname=modelname,productimage=productimage,description=description)
        return redirect('/donate/')

    #步驟一 GET 回傳空白的表單

    return render(request,'donate/create.html',locals())