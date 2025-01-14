
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * ptr; } ;
struct TYPE_8__ {TYPE_1__ waiter; int magic; int type; } ;
typedef TYPE_2__ WFC_IPC_MSG_HEADER_T ;
typedef int VCOS_STATUS_T ;
typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_9__ {size_t member_1; TYPE_2__* member_0; } ;
typedef TYPE_3__ VCHIQ_ELEMENT_T ;
struct TYPE_10__ {int service; int refcount; } ;


 scalar_t__ VCHIQ_SUCCESS ;
 int VCOS_ALERT (char*,int ) ;
 int VCOS_EINVAL ;
 int VCOS_ENXIO ;
 int VCOS_FUNCTION ;
 int VCOS_SUCCESS ;
 int WFC_IPC_MSG_MAGIC ;
 scalar_t__ vchiq_queue_message (int ,TYPE_3__*,int) ;
 int vcos_assert (int) ;
 int vcos_log_error (char*,int ,scalar_t__) ;
 int vcos_log_trace (char*,int ,int ,size_t) ;
 int vcos_verify (int ) ;
 TYPE_5__ wfc_client_ipc ;
 int wfc_client_ipc_release_keep_alive () ;
 int wfc_client_ipc_use_keep_alive () ;

VCOS_STATUS_T wfc_client_ipc_send(WFC_IPC_MSG_HEADER_T *msg,
                                    size_t size)
{
   VCHIQ_STATUS_T vst;
   VCHIQ_ELEMENT_T elems[] = {{msg, size}};

   vcos_log_trace("%s: type %d, len %d", VCOS_FUNCTION, msg->type, size);

   vcos_assert(size >= sizeof(*msg));

   if (!vcos_verify(wfc_client_ipc.refcount))
   {
      VCOS_ALERT("%s: client uninitialised", VCOS_FUNCTION);

      return VCOS_EINVAL;
   }

   msg->magic = WFC_IPC_MSG_MAGIC;
   msg->waiter.ptr = ((void*)0);

   wfc_client_ipc_use_keep_alive();

   vst = vchiq_queue_message(wfc_client_ipc.service, elems, 1);

   wfc_client_ipc_release_keep_alive();

   if (vst != VCHIQ_SUCCESS)
   {
      vcos_log_error("%s: failed to queue, 0x%x", VCOS_FUNCTION, vst);
      return VCOS_ENXIO;
   }

   return VCOS_SUCCESS;
}
