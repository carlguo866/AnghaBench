
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;
typedef enum regress_openssl_type { ____Placeholder_regress_openssl_type } regress_openssl_type ;
typedef int SSL ;


 int BUFFEREVENT_SSL_ACCEPTING ;
 int BUFFEREVENT_SSL_CONNECTING ;
 int BUFFEREVENT_SSL_OPEN ;
 long REGRESS_OPENSSL_CLIENT ;
 int REGRESS_OPENSSL_DIRTY_SHUTDOWN ;
 long REGRESS_OPENSSL_SERVER ;
 struct bufferevent* bufferevent_openssl_filter_new (struct event_base*,struct bufferevent*,int *,int,int) ;
 int bufferevent_openssl_set_allow_dirty_shutdown (struct bufferevent*,int) ;
 struct bufferevent* bufferevent_openssl_socket_new (struct event_base*,int ,int *,int,int) ;
 int bufferevent_setcb (struct bufferevent*,int ,int ,int ,void*) ;
 int done_writing_cb ;
 int eventcb ;
 int respond_to_number ;

__attribute__((used)) static void
open_ssl_bufevs(struct bufferevent **bev1_out, struct bufferevent **bev2_out,
    struct event_base *base, int is_open, int flags, SSL *ssl1, SSL *ssl2,
    evutil_socket_t *fd_pair, struct bufferevent **underlying_pair,
    enum regress_openssl_type type)
{
 int state1 = is_open ? BUFFEREVENT_SSL_OPEN :BUFFEREVENT_SSL_CONNECTING;
 int state2 = is_open ? BUFFEREVENT_SSL_OPEN :BUFFEREVENT_SSL_ACCEPTING;
 int dirty_shutdown = type & REGRESS_OPENSSL_DIRTY_SHUTDOWN;
 if (fd_pair) {
  *bev1_out = bufferevent_openssl_socket_new(
   base, fd_pair[0], ssl1, state1, flags);
  *bev2_out = bufferevent_openssl_socket_new(
   base, fd_pair[1], ssl2, state2, flags);
 } else {
  *bev1_out = bufferevent_openssl_filter_new(
   base, underlying_pair[0], ssl1, state1, flags);
  *bev2_out = bufferevent_openssl_filter_new(
   base, underlying_pair[1], ssl2, state2, flags);

 }
 bufferevent_setcb(*bev1_out, respond_to_number, done_writing_cb,
     eventcb, (void*)(REGRESS_OPENSSL_CLIENT | (long)type));
 bufferevent_setcb(*bev2_out, respond_to_number, done_writing_cb,
     eventcb, (void*)(REGRESS_OPENSSL_SERVER | (long)type));

 bufferevent_openssl_set_allow_dirty_shutdown(*bev1_out, dirty_shutdown);
 bufferevent_openssl_set_allow_dirty_shutdown(*bev2_out, dirty_shutdown);
}
