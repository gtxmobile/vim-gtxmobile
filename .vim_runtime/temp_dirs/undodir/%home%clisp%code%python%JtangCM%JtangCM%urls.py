Vim�UnDo� �t���Ј͏A˒�X��C�G25b���ӵ��                                     S���    _�                        0    ����                                                                                                                                                                                                                                                                                                                                                             S��     �               0    url(r'^nagiosql/',include('nagiosql.urls'),)5�_�                       0    ����                                                                                                                                                                                                                                                                                                                                                             S��     �               0    url(r'^nagiosql/',include('nagiosql.urls'),)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             S��     �             �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             S��     �                 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             S��     �               0    url(r'^nagiosql/',include('nagiosql.urls'),)5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             S��    �               0    url(r'^lenginge/',include('nagiosql.urls'),)5�_�                             ����                                                                                                                                                                                                                                                                                                                   &                                        S���     �                  3from django.conf.urls import patterns, include, url        from django.contrib import admin   #from naqiosql import urls   admin.autodiscover()       urlpatterns = patterns('',       # Examples:   4    # url(r'^$', 'JtangCM.views.home', name='home'),   +    # url(r'^blog/', include('blog.urls')),       .    url(r'^admin/', include(admin.site.urls)),   1    url(r'^nagiosql/',include('nagiosql.urls'),),   0    url(r'^lenginge/',include('Lenginge.urls'),)   )5��