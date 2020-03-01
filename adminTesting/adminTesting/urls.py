from django.contrib import admin
from django.urls import path, include
import login.views
import home.views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home.views.main),

    # home app
    path('home/', home.views.index),

    # auth app
    path('login/', login.views.login),
]
