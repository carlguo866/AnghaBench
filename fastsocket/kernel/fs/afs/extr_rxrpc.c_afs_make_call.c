
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sin_addr; int sin_port; int sin_family; } ;
struct TYPE_5__ {TYPE_1__ sin; } ;
struct sockaddr_rxrpc {int transport_len; TYPE_2__ transport; int transport_type; int srx_service; int srx_family; } ;
struct rxrpc_call {int dummy; } ;
struct msghdr {int msg_iovlen; int msg_flags; scalar_t__ msg_controllen; int * msg_control; struct iovec* msg_iov; scalar_t__ msg_namelen; int * msg_name; } ;
struct kvec {int iov_len; int iov_base; } ;
struct iovec {int dummy; } ;
struct in_addr {int s_addr; } ;
struct afs_wait_mode {int (* wait ) (struct afs_call*) ;} ;
struct afs_call {TYPE_3__* type; struct rxrpc_call* rxcall; scalar_t__ send_pages; int request_size; int state; int request; int * key; int port; int service_id; int async_work; struct afs_wait_mode const* wait_mode; } ;
typedef int srx ;
typedef int gfp_t ;
struct TYPE_6__ {int (* destructor ) (struct afs_call*) ;int * name; } ;


 int AFS_CALL_AWAIT_REPLY ;
 int AF_INET ;
 int AF_RXRPC ;
 int ASSERT (int ) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct rxrpc_call*) ;
 int MSG_MORE ;
 int PTR_ERR (struct rxrpc_call*) ;
 int RX_USER_ABORT ;
 int SOCK_DGRAM ;
 int _debug (char*,struct afs_call*,int *,int ,int ) ;
 int _enter (char*,int ,int ) ;
 int _leave (char*,int) ;
 int afs_free_call (struct afs_call*) ;
 int afs_outstanding_calls ;
 int afs_process_async_call ;
 int afs_send_pages (struct afs_call*,struct msghdr*,struct kvec*) ;
 int afs_socket ;
 int atomic_read (int *) ;
 int key_serial (int *) ;
 int memcpy (int *,struct in_addr*,int) ;
 int memset (struct sockaddr_rxrpc*,int ,int) ;
 int ntohs (int ) ;
 int rxrpc_kernel_abort_call (struct rxrpc_call*,int ) ;
 struct rxrpc_call* rxrpc_kernel_begin_call (int ,struct sockaddr_rxrpc*,int *,unsigned long,int ) ;
 int rxrpc_kernel_end_call (struct rxrpc_call*) ;
 int rxrpc_kernel_send_data (struct rxrpc_call*,struct msghdr*,int ) ;
 int stub1 (struct afs_call*) ;
 int stub2 (struct afs_call*) ;

int afs_make_call(struct in_addr *addr, struct afs_call *call, gfp_t gfp,
    const struct afs_wait_mode *wait_mode)
{
 struct sockaddr_rxrpc srx;
 struct rxrpc_call *rxcall;
 struct msghdr msg;
 struct kvec iov[1];
 int ret;

 _enter("%x,{%d},", addr->s_addr, ntohs(call->port));

 ASSERT(call->type != ((void*)0));
 ASSERT(call->type->name != ((void*)0));

 _debug("____MAKE %p{%s,%x} [%d]____",
        call, call->type->name, key_serial(call->key),
        atomic_read(&afs_outstanding_calls));

 call->wait_mode = wait_mode;
 INIT_WORK(&call->async_work, afs_process_async_call);

 memset(&srx, 0, sizeof(srx));
 srx.srx_family = AF_RXRPC;
 srx.srx_service = call->service_id;
 srx.transport_type = SOCK_DGRAM;
 srx.transport_len = sizeof(srx.transport.sin);
 srx.transport.sin.sin_family = AF_INET;
 srx.transport.sin.sin_port = call->port;
 memcpy(&srx.transport.sin.sin_addr, addr, 4);


 rxcall = rxrpc_kernel_begin_call(afs_socket, &srx, call->key,
      (unsigned long) call, gfp);
 call->key = ((void*)0);
 if (IS_ERR(rxcall)) {
  ret = PTR_ERR(rxcall);
  goto error_kill_call;
 }

 call->rxcall = rxcall;


 iov[0].iov_base = call->request;
 iov[0].iov_len = call->request_size;

 msg.msg_name = ((void*)0);
 msg.msg_namelen = 0;
 msg.msg_iov = (struct iovec *) iov;
 msg.msg_iovlen = 1;
 msg.msg_control = ((void*)0);
 msg.msg_controllen = 0;
 msg.msg_flags = (call->send_pages ? MSG_MORE : 0);




 if (!call->send_pages)
  call->state = AFS_CALL_AWAIT_REPLY;
 ret = rxrpc_kernel_send_data(rxcall, &msg, call->request_size);
 if (ret < 0)
  goto error_do_abort;

 if (call->send_pages) {
  ret = afs_send_pages(call, &msg, iov);
  if (ret < 0)
   goto error_do_abort;
 }



 return wait_mode->wait(call);

error_do_abort:
 rxrpc_kernel_abort_call(rxcall, RX_USER_ABORT);
 rxrpc_kernel_end_call(rxcall);
 call->rxcall = ((void*)0);
error_kill_call:
 call->type->destructor(call);
 afs_free_call(call);
 _leave(" = %d", ret);
 return ret;
}
