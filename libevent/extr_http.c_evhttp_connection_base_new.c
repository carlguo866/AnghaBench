
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int dummy; } ;
struct event_base {int dummy; } ;
struct evdns_base {int dummy; } ;
typedef int ev_uint16_t ;


 struct evhttp_connection* evhttp_connection_base_bufferevent_new (struct event_base*,struct evdns_base*,int *,char const*,int ) ;

struct evhttp_connection *
evhttp_connection_base_new(struct event_base *base, struct evdns_base *dnsbase,
    const char *address, ev_uint16_t port)
{
 return evhttp_connection_base_bufferevent_new(base, dnsbase, ((void*)0), address, port);
}
