from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import auth, messages
from django.contrib.auth.models import User
from accounts.models import Brand, Register, Profile
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
            return redirect('dashboard')
        else:
            messages.error(request, 'user password not incorrect')
            return redirect('login')
    else:
        return render(request, 'accounts/login.html')
   
def dashboard(request):
    
    profile = Profile.objects.all().filter(user_id=request.user.id)[0]
    userbybrands = Register.objects.filter(brands_id=profile.brand_id)

    context = {
        'userbybrands' : userbybrands      
    }
    return render(request, 'accounts/dashboard.html', context)

def detail(request, id):
    #registers = get_object_or_404(Register, pk=id)
    registers = Register.objects.all().filter(pk=id)
    context = {
        'register' : registers
    }
    return render(request, 'accounts/detail.html', context)

def logout(request):
    auth.logout(request)
    return redirect('login')