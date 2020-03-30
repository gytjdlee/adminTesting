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

    # adminAccount app
    path('adminAccount/', adminAccount.views.adminAccount),
    path('adminAccount/select', adminAccount.views.adminAccount_select),


    #########################################################################

    # test
    path('home/test/', home.views.test, name='test_select'),

    path('home/test/insert/', home.views.test_insert, name='test_insert'),
    path('home/test/delete/', home.views.test_delete, name='test_delete'),

    path('home/test/update/<int:pk>', home.views.FaqUpdateView.as_view(), name='test_update'),
    #path('home/test/update/', home.views.test_update, name='test_update'),

    path('home/test1/', home.views.test1, name='test1'),
    path('home/testGraph/', home.views.testGraph, name='testGraph'),

    #########################################################################

]
