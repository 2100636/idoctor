from django.conf.urls import patterns, include, url
from django.contrib import admin
from django.conf import settings
from django.views.generic.base import RedirectView, TemplateView
admin.autodiscover()

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url(r'^ckeditor/', include('ckeditor.urls')),
    # url(r'^favicon\.ico$', RedirectView.as_view(
    #                             url=settings.STATIC_URL + 'root_dir/computer.png')),

    url(r'^(?P<file_name>[a-zA-Z0-9_]*)\.(?P<file_type>.*)$', RedirectView.as_view(
        url=settings.STATIC_URL + 'root_dir/%(file_name)s.%(file_type)s/')),

    url(r'^', include('project.core.urls')),
]

if settings.DEBUG:
    urlpatterns += patterns('',
    url(r'^static/(?P<path>.*)$', 'django.views.static.serve',
        {'document_root': settings.STATIC_ROOT}),
    url(r'^media/(?P<path>.*)$', 'django.views.static.serve',
        {'document_root': settings.MEDIA_ROOT}),
        )