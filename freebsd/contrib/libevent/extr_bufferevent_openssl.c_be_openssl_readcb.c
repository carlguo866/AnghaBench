
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_openssl {int dummy; } ;
struct bufferevent {int dummy; } ;


 int consider_reading (struct bufferevent_openssl*) ;

__attribute__((used)) static void
be_openssl_readcb(struct bufferevent *bev_base, void *ctx)
{
 struct bufferevent_openssl *bev_ssl = ctx;
 consider_reading(bev_ssl);
}
