
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_os_sock_t ;
struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_5__ {int is_server_connection; TYPE_2__ timer_handle; scalar_t__ open_handles; TYPE_3__ poll_handle; scalar_t__ got_disconnect; scalar_t__ sent_fin; scalar_t__ got_fin; scalar_t__ delayed_events; scalar_t__ events; scalar_t__ sent; scalar_t__ read; int sock; } ;
typedef TYPE_1__ connection_context_t ;


 int ASSERT (int) ;
 scalar_t__ malloc (int) ;
 int uv_default_loop () ;
 int uv_poll_init_socket (int ,TYPE_3__*,int ) ;
 int uv_timer_init (int ,TYPE_2__*) ;

__attribute__((used)) static connection_context_t* create_connection_context(
    uv_os_sock_t sock, int is_server_connection) {
  int r;
  connection_context_t* context;

  context = (connection_context_t*) malloc(sizeof *context);
  ASSERT(context != ((void*)0));

  context->sock = sock;
  context->is_server_connection = is_server_connection;
  context->read = 0;
  context->sent = 0;
  context->open_handles = 0;
  context->events = 0;
  context->delayed_events = 0;
  context->got_fin = 0;
  context->sent_fin = 0;
  context->got_disconnect = 0;

  r = uv_poll_init_socket(uv_default_loop(), &context->poll_handle, sock);
  context->open_handles++;
  context->poll_handle.data = context;
  ASSERT(r == 0);

  r = uv_timer_init(uv_default_loop(), &context->timer_handle);
  context->open_handles++;
  context->timer_handle.data = context;
  ASSERT(r == 0);

  return context;
}
