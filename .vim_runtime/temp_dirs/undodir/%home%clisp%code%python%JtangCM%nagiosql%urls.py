Vim�UnDo� �ɰtnD�D��g�eG���UY�LGD�����                                      S���     _�                              ����                                                                                                                                                                                                                                                                                                                               .                  v        S���     �                  ;# Copyright 2012 NagiosQL-API authors. All rights reserved.   4# Use of this source code is governed by a BSD-style   0# license that can be found in the LICENSE file.           )from django.conf.urls import patterns,url   =from rest_framework.urlpatterns import format_suffix_patterns   from nagiosql import views       urlpatterns = patterns('',   t    (r'^host/(?P<hostname>[\S]+)/(?P<ip>([0-9]{1,3}\.){3}[0-9]{1,3})/?$', views.HostDetail.as_view()), #GET e DELETE   F    (r'^host/(?P<hostname>[\S]+)/?$',views.HostDetail.as_view()), #GET   5    (r'^host/?$', views.HostDetail.as_view()), # POST   )	(r'^testre/?$',views.test_request_data),   9    (r'^hosts$', views.GenericHostList.as_view()), # POST   8	#(r'^host/(?P<pk>[0-9]+)$',views.HostDetail.as_view()),   �    (r'^service/(?P<service>([\w]+[\s+]?)+)/(?P<hostname>[\S]+)/?$', views.ServiceDetail.as_view()), #DELETE a service from a host   `    (r'^service/(?P<service>([\w]+[\s+]?)+)/?$', views.ServiceDetail.as_view()), #DELETE service   Y    (r'^service/?$', views.ServiceDetail.as_view()), # POST # PUT alert or create service   K    #(r'^command/(?P<command>[\w]+)/?$', views.CommandList.as_view()), #GET   M    #(r'^downtime/(?P<action>[\w]+)/?$', 'nagiosql.api.views.downtime'), #PUT   )   /urlpatterns=format_suffix_patterns(urlpatterns)5��