from django.shortcuts import render, redirect
from django.contrib import auth, messages
from django.contrib.auth.models import User
from accounts.models import Brand, Register
# Create your views here.


def register(request):
    return render(request, 'accounts/register.html')


def login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        
        user = auth.authenticate(username=username, password=password)
        if user is not None:
            auth.login(request, user)
            #messages.success(request, 'you are now logged in')
            return redirect('dashboard')
        else:
            messages.error(request, 'user password not incorrect')
            return redirect('login')
    else:
        return render(request, 'accounts/login.html')
   
def dashboard(request):
    
    register = Register.objects.all().filter(user_id=request.user.id).first()
    user = Register.objects.filter(brands_id=register.brands_id)

    context = {
        'user' : user      
    }
    return render(request, 'accounts/dashboard.html', context)

def detailbrands(request):
    return render(request, 'accounts/detailbrands.html')

def logout(request):
    auth.logout(request)
    return redirect('login')