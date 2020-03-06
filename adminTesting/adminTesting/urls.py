from django.contrib import admin
from django.urls import path, include
import login.views
import home.views
import adminAccount.views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', login.views.login),

    # test
    path('test/', home.views.test),
    path('main/', home.views.main),

    # home app
    path('home/', home.views.index),

    # login app
    path('login/', login.views.login),

    # adminAccount app
    path('adminAccount/', adminAccount.views.adminAccount),
]
