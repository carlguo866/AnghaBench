
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent {int enabled; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_openssl {scalar_t__ read_blocked_on_write; TYPE_1__ bev; } ;


 int EV_READ ;
 int EV_WRITE ;
 int start_reading (struct bufferevent_openssl*) ;
 int stop_writing (struct bufferevent_openssl*) ;

__attribute__((used)) static int
clear_rbow(struct bufferevent_openssl *bev_ssl)
{
 struct bufferevent *bev = &bev_ssl->bev.bev;
 int r = 0;
 bev_ssl->read_blocked_on_write = 0;
 if (!(bev->enabled & EV_WRITE))
  stop_writing(bev_ssl);
 if (bev->enabled & EV_READ)
  r = start_reading(bev_ssl);
 return r;
}
