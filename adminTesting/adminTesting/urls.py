from django.contrib import admin
from django.urls import path, include
import login.views
import home.views
import adminAccount.views
from django.conf.urls import url

urlpatterns = [
    #url(r'^$', login.views.login),

    path('jadmin/', admin.site.urls),
    path('', login.views.login),

    #########################################################################
    # login app
    #########################################################################
    path('login/', login.views.login, name='login'),
    path('logout/', login.views.logout, name='logout'),

    #########################################################################
    # home app
    #########################################################################
    path('home/', home.views.home, name='home'),


    #########################################################################
    # account app
    #########################################################################
    # account manage
    path('adminAccount/', adminAccount.views.account, name='account_select'),
    path('adminAccount/select_fast', adminAccount.views.account_select_fast, name='account_select_fast'),
    path('adminAccount/select_ajax', adminAccount.views.account_select_ajax, name='account_select_ajax'),
    #url(r'^list/ajax/$', home.views.post_list_ajax, name='post_list_ajax')

    path('adminAccount/insert/', adminAccount.views.account_insert, name='account_insert'),
    path('adminAccount/update/', adminAccount.views.account_update, name='account_update'),
    path('adminAccount/delete/', adminAccount.views.account_delete, name='account_delete'),

    # account Repository Manage
    path('adminAccount/repository/', adminAccount.views.account_repository, name='account_repository_select'),
    path('adminAccount/repository_insert/', adminAccount.views.account_repository_insert, name='account_repository_insert'),
    path('adminAccount/repository_update/', adminAccount.views.account_repository_update, name='account_repository_update'),
    path('adminAccount/repository_delete/', adminAccount.views.account_repository_delete, name='account_repository_delete'),

    # account test
    path('adminAccount/selectDel/', adminAccount.views.account_selectDel, name='account_selectDel'),
    #path('adminAccount/insert/', adminAccount.views.account_selectDel, name='account_selectDel'),

    #########################################################################
    # test
    #########################################################################
    path('home/test/', home.views.test, name='test_select'),

    path('home/test/insert/', home.views.test_insert, name='test_insert'),
    path('home/test/delete/', home.views.test_delete, name='test_delete'),
    path('home/test/update/', home.views.test_update, name='test_update'),

    path('home/test1/', home.views.test1, name='test1'),
    path('home/testGraph/', home.views.testGraph, name='testGraph'),


    #post test
    path('home/post/', home.views.post_list, name='post_list'),
    path('home/post/select/', home.views.post_list_ajax, name='post_list_ajax'),

    #########################################################################

]
