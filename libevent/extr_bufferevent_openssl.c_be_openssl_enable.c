
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_openssl {scalar_t__ underlying; } ;
struct bufferevent {int dummy; } ;


 int BEV_RESET_GENERIC_READ_TIMEOUT (struct bufferevent*) ;
 int BEV_RESET_GENERIC_WRITE_TIMEOUT (struct bufferevent*) ;
 short EV_READ ;
 short EV_WRITE ;
 int consider_reading (struct bufferevent_openssl*) ;
 int consider_writing (struct bufferevent_openssl*) ;
 int start_reading (struct bufferevent_openssl*) ;
 int start_writing (struct bufferevent_openssl*) ;
 struct bufferevent_openssl* upcast (struct bufferevent*) ;

__attribute__((used)) static int
be_openssl_enable(struct bufferevent *bev, short events)
{
 struct bufferevent_openssl *bev_ssl = upcast(bev);
 int r1 = 0, r2 = 0;

 if (events & EV_READ)
  r1 = start_reading(bev_ssl);
 if (events & EV_WRITE)
  r2 = start_writing(bev_ssl);

 if (bev_ssl->underlying) {
  if (events & EV_READ)
   BEV_RESET_GENERIC_READ_TIMEOUT(bev);
  if (events & EV_WRITE)
   BEV_RESET_GENERIC_WRITE_TIMEOUT(bev);

  if (events & EV_READ)
   consider_reading(bev_ssl);
  if (events & EV_WRITE)
   consider_writing(bev_ssl);
 }
 return (r1 < 0 || r2 < 0) ? -1 : 0;
}
