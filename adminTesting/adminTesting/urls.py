from django.contrib import admin
from django.urls import path, include
import login.views
import home.views
import adminAccount.views
from django.conf.urls import url

urlpatterns = [
    #url(r'^$', login.views.login),

    path('jadmin/', admin.site.urls),
    path('', login.views.loginHome),

    # login app
    path('login/', login.views.login),
    #path('login/', login.views.login),
    path('loginimsi/', login.views.loginimsi),

    # home app
    path('home/', home.views.home),

    # adminAccount app
    path('adminAccount/', adminAccount.views.adminAccount),
    path('adminAccount/select', adminAccount.views.adminAccount_select),


    # test
    path('home/test/', home.views.test),
    path('home/testGraph', home.views.testGraph),

]
