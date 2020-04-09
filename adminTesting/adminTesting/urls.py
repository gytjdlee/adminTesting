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
    path('login/', login.views.login, name='login'),
    path('logout/', login.views.logout, name='logout'),

    # home app
    path('home/', home.views.home),


    #########################################################################
    # account app
    path('adminAccount/', adminAccount.views.account, name='account_select'),
    path('adminAccount/fast_select', adminAccount.views.account_fast_select, name='account_fast_select'),
    path('adminAccount/insert/', adminAccount.views.account_insert, name='account_insert'),
    path('adminAccount/update/', adminAccount.views.account_update, name='account_update'),
    path('adminAccount/delete/', adminAccount.views.account_delete, name='account_delete'),

    # account test
    path('adminAccount/select/', adminAccount.views.account_select, name='account_select1'),


    #########################################################################

    # test
    path('home/test/', home.views.test, name='test_select'),

    path('home/test/insert/', home.views.test_insert, name='test_insert'),
    path('home/test/delete/', home.views.test_delete, name='test_delete'),
    path('home/test/update/', home.views.test_update, name='test_update'),

    path('home/test1/', home.views.test1, name='test1'),
    path('home/testGraph/', home.views.testGraph, name='testGraph'),

    #########################################################################

]
