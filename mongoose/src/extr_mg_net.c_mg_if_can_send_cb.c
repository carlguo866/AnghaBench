
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_9__ {char* buf; size_t len; } ;
struct mg_connection {int flags; int user_data; TYPE_4__ send_mbuf; scalar_t__ last_io_time; TYPE_3__* mgr; TYPE_2__* iface; } ;
struct TYPE_8__ {int * hexdump_file; } ;
struct TYPE_7__ {TYPE_1__* vtable; } ;
struct TYPE_6__ {int (* udp_send ) (struct mg_connection*,char const*,size_t) ;int (* tcp_send ) (struct mg_connection*,char const*,size_t) ;} ;


 int DBG (char*) ;
 int MG_EV_SEND ;
 int MG_F_CLOSE_IMMEDIATELY ;
 int MG_F_CONNECTING ;
 int MG_F_LISTENING ;
 int MG_F_SSL ;
 int MG_F_SSL_HANDSHAKE_DONE ;
 int MG_F_UDP ;
 int MG_F_WANT_WRITE ;
 int MG_SSL_WANT_WRITE ;
 size_t MG_TCP_IO_SIZE ;
 int mbuf_remove (TYPE_4__*,int) ;
 int mbuf_trim (TYPE_4__*) ;
 int mg_call (struct mg_connection*,int *,int ,int ,int*) ;
 int mg_hexdump_connection (struct mg_connection*,int *,char const*,int,int ) ;
 int mg_ssl_handshake (struct mg_connection*) ;
 int mg_ssl_if_write (struct mg_connection*,char const*,size_t) ;
 scalar_t__ mg_time () ;
 int stub1 (struct mg_connection*,char const*,size_t) ;
 int stub2 (struct mg_connection*,char const*,size_t) ;

void mg_if_can_send_cb(struct mg_connection *nc) {
  int n = 0;
  const char *buf = nc->send_mbuf.buf;
  size_t len = nc->send_mbuf.len;

  if (nc->flags & (MG_F_CLOSE_IMMEDIATELY | MG_F_CONNECTING)) {
    return;
  }
  if (!(nc->flags & MG_F_UDP)) {
    if (nc->flags & MG_F_LISTENING) return;
    if (len > MG_TCP_IO_SIZE) len = MG_TCP_IO_SIZE;
  }
      if (len > 0) {
    if (nc->flags & MG_F_UDP) {
      n = nc->iface->vtable->udp_send(nc, buf, len);
    } else {
      n = nc->iface->vtable->tcp_send(nc, buf, len);
    }
    DBG(("%p -> %d bytes", nc, n));
  }






  if (n < 0) {
    nc->flags |= MG_F_CLOSE_IMMEDIATELY;
  } else if (n > 0) {
    nc->last_io_time = (time_t) mg_time();
    mbuf_remove(&nc->send_mbuf, n);
    mbuf_trim(&nc->send_mbuf);
  }
  if (n != 0) mg_call(nc, ((void*)0), nc->user_data, MG_EV_SEND, &n);
}
