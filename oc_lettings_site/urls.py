from django.contrib import admin
from django.urls import path, include

from . import views


def zero_division_error(request):
    return 1 / 0


urlpatterns = [
    path('', views.index, name='index'),
    path('lettings/', include(('lettings.urls', 'lettings'), namespace='lettings')),
    path('profiles/', include(('profiles.urls', 'profiles'), namespace='profiles')),
    path('admin/', admin.site.urls),
    path('sentry-debug/', zero_division_error),
]
