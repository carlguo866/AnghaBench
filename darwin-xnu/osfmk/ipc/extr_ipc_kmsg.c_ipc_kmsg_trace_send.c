
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_9__ ;
typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_28__ ;
typedef struct TYPE_35__ TYPE_24__ ;
typedef struct TYPE_34__ TYPE_1__ ;
typedef struct TYPE_33__ TYPE_17__ ;
typedef struct TYPE_32__ TYPE_13__ ;
typedef struct TYPE_31__ TYPE_12__ ;
typedef struct TYPE_30__ TYPE_11__ ;
typedef struct TYPE_29__ TYPE_10__ ;


typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ uint32_t ;
typedef TYPE_3__* task_t ;
typedef int security_token_t ;
struct TYPE_39__ {int msgh_trailer_size; } ;
typedef TYPE_4__ mach_msg_trailer_t ;
struct TYPE_40__ {int msgh_sender; } ;
typedef TYPE_5__ mach_msg_security_trailer_t ;
typedef int mach_msg_option_t ;
struct TYPE_41__ {scalar_t__ count; } ;
typedef TYPE_6__ mach_msg_ool_ports_descriptor_t ;
struct TYPE_42__ {int size; int deallocate; int copy; } ;
typedef TYPE_7__ mach_msg_ool_descriptor_t ;
struct TYPE_43__ {int msgh_id; int msgh_bits; scalar_t__ msgh_size; scalar_t__ msgh_local_port; scalar_t__ msgh_remote_port; } ;
typedef TYPE_8__ mach_msg_header_t ;
struct TYPE_37__ {int type; } ;
struct TYPE_44__ {TYPE_2__ type; } ;
typedef TYPE_9__ mach_msg_descriptor_t ;
struct TYPE_29__ {scalar_t__ msgh_descriptor_count; } ;
typedef TYPE_10__ mach_msg_body_t ;
typedef TYPE_11__* ipc_space_t ;
typedef TYPE_12__* ipc_port_t ;
typedef TYPE_13__* ipc_kmsg_t ;
typedef int boolean_t ;
struct TYPE_38__ {TYPE_1__* map; } ;
struct TYPE_36__ {TYPE_3__* iit_task; } ;
struct TYPE_35__ {scalar_t__ imq_qlimit; } ;
struct TYPE_34__ {scalar_t__ max_offset; } ;
struct TYPE_33__ {int start; int end; } ;
struct TYPE_32__ {TYPE_8__* ikm_header; int ikm_voucher; } ;
struct TYPE_31__ {scalar_t__ ip_receiver_name; scalar_t__ ip_receiver; TYPE_24__ ip_messages; TYPE_28__* ip_imp_task; scalar_t__ ip_tempowner; } ;
struct TYPE_30__ {TYPE_3__* is_task; } ;
typedef int KERNEL_SECURITY_TOKEN ;


 int DBG_FUNC_END ;
 int DBG_MACH_IPC ;
 TYPE_28__* IIT_NULL ;







 int IPC_PORT_VALID (TYPE_12__*) ;
 int KDBG (int,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ;
 int KDEBUG_TRACE ;
 scalar_t__ KMSG_TRACE_FLAGS_MASK ;
 scalar_t__ KMSG_TRACE_FLAGS_SHIFT ;
 scalar_t__ KMSG_TRACE_FLAG_APP_DST ;
 scalar_t__ KMSG_TRACE_FLAG_APP_SRC ;
 scalar_t__ KMSG_TRACE_FLAG_CHECKIN ;
 scalar_t__ KMSG_TRACE_FLAG_COMPLEX ;
 scalar_t__ KMSG_TRACE_FLAG_DAEMON_DST ;
 scalar_t__ KMSG_TRACE_FLAG_DAEMON_SRC ;
 scalar_t__ KMSG_TRACE_FLAG_DSTQFULL ;
 scalar_t__ KMSG_TRACE_FLAG_DST_NDFLTQ ;
 scalar_t__ KMSG_TRACE_FLAG_DST_SONCE ;
 scalar_t__ KMSG_TRACE_FLAG_DTMPOWNER ;
 scalar_t__ KMSG_TRACE_FLAG_IOKIT ;
 scalar_t__ KMSG_TRACE_FLAG_ONEWAY ;
 scalar_t__ KMSG_TRACE_FLAG_OOLMEM ;
 scalar_t__ KMSG_TRACE_FLAG_PCPY ;
 scalar_t__ KMSG_TRACE_FLAG_RAISEIMP ;
 scalar_t__ KMSG_TRACE_FLAG_SEMA ;
 scalar_t__ KMSG_TRACE_FLAG_SND64 ;
 scalar_t__ KMSG_TRACE_FLAG_SNDRCV ;
 scalar_t__ KMSG_TRACE_FLAG_SRC_NDFLTQ ;
 scalar_t__ KMSG_TRACE_FLAG_SRC_SONCE ;
 scalar_t__ KMSG_TRACE_FLAG_TIMER ;
 scalar_t__ KMSG_TRACE_FLAG_TRACED ;
 scalar_t__ KMSG_TRACE_FLAG_VCPY ;
 scalar_t__ KMSG_TRACE_FLAG_VOUCHER ;
 scalar_t__ KMSG_TRACE_PORTS_MASK ;
 scalar_t__ KMSG_TRACE_PORTS_SHIFT ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_IPC_KMSG_INFO ;
 int MACH_MSGH_BITS_COMPLEX ;
 int MACH_MSGH_BITS_LOCAL (int) ;
 int MACH_MSGH_BITS_RAISEIMP ;
 int MACH_MSGH_BITS_REMOTE (int) ;



 int MACH_MSG_PHYSICAL_COPY ;



 scalar_t__ MACH_PORT_NULL ;
 scalar_t__ MACH_PORT_QLIMIT_DEFAULT ;
 int MACH_RCV_MSG ;
 int MACH_SEND_MSG ;
 int MSG_OOL_SIZE_SMALL ;
 TYPE_3__* TASK_NULL ;
 scalar_t__ VM_MAX_ADDRESS ;
 scalar_t__ __probable (int) ;
 TYPE_3__* current_task () ;
 scalar_t__ imq_full (TYPE_24__*) ;
 int ip_active (TYPE_12__*) ;
 int ip_kotype (TYPE_12__*) ;
 int ip_lock (TYPE_12__*) ;
 int ip_unlock (TYPE_12__*) ;
 scalar_t__ ipc_space_kernel ;
 scalar_t__ is_active (TYPE_11__*) ;
 TYPE_17__ is_iokit_subsystem ;
 int kdebug_debugid_enabled (int) ;
 int kdebug_enable ;
 scalar_t__ memcmp (int *,int *,int) ;
 scalar_t__ round_msg (scalar_t__) ;
 scalar_t__ task_is_app (TYPE_3__*) ;
 scalar_t__ task_is_daemon (TYPE_3__*) ;
 scalar_t__ task_pid (TYPE_3__*) ;
 scalar_t__ unsafe_convert_port_to_voucher (int ) ;

void ipc_kmsg_trace_send(ipc_kmsg_t kmsg,
    mach_msg_option_t option)
{
 task_t send_task = TASK_NULL;
 ipc_port_t dst_port, src_port;
 boolean_t is_task_64bit;
 mach_msg_header_t *msg;
 mach_msg_trailer_t *trailer;

 int kotype = 0;
 uint32_t msg_size = 0;
 uint32_t msg_flags = KMSG_TRACE_FLAG_TRACED;
 uint32_t num_ports = 0;
 uint32_t send_pid, dst_pid;







 if (__probable((kdebug_enable & KDEBUG_TRACE) == 0))
  return;
 if (!kdebug_debugid_enabled(MACHDBG_CODE(DBG_MACH_IPC,MACH_IPC_KMSG_INFO)))
  return;

 msg = kmsg->ikm_header;

 dst_port = (ipc_port_t)(msg->msgh_remote_port);
 if (!IPC_PORT_VALID(dst_port))
  return;




 if ((option & (MACH_SEND_MSG|MACH_RCV_MSG)) == (MACH_SEND_MSG|MACH_RCV_MSG))
  msg_flags |= KMSG_TRACE_FLAG_SNDRCV;

 if (msg->msgh_id >= is_iokit_subsystem.start &&
     msg->msgh_id < is_iokit_subsystem.end + 100)
  msg_flags |= KMSG_TRACE_FLAG_IOKIT;

 else if (msg->msgh_id == 0x77303074u )
  msg_flags |= KMSG_TRACE_FLAG_CHECKIN;

 if (msg->msgh_bits & MACH_MSGH_BITS_RAISEIMP)
  msg_flags |= KMSG_TRACE_FLAG_RAISEIMP;

 if (unsafe_convert_port_to_voucher(kmsg->ikm_voucher))
  msg_flags |= KMSG_TRACE_FLAG_VOUCHER;




 send_task = current_task();
 send_pid = task_pid(send_task);

 if (send_pid != 0) {
  if (task_is_daemon(send_task))
   msg_flags |= KMSG_TRACE_FLAG_DAEMON_SRC;
  else if (task_is_app(send_task))
   msg_flags |= KMSG_TRACE_FLAG_APP_SRC;
 }

 is_task_64bit = (send_task->map->max_offset > VM_MAX_ADDRESS);
 if (is_task_64bit)
  msg_flags |= KMSG_TRACE_FLAG_SND64;

 src_port = (ipc_port_t)(msg->msgh_local_port);
 if (src_port) {
  if (src_port->ip_messages.imq_qlimit != MACH_PORT_QLIMIT_DEFAULT)
   msg_flags |= KMSG_TRACE_FLAG_SRC_NDFLTQ;
  switch (MACH_MSGH_BITS_LOCAL(msg->msgh_bits)) {
  case 129:
   msg_flags |= KMSG_TRACE_FLAG_SRC_SONCE;
   break;
  default:
   break;
  }
 } else {
  msg_flags |= KMSG_TRACE_FLAG_ONEWAY;
 }





 ip_lock(dst_port);
 if (!ip_active(dst_port)) {

  dst_pid = (uint32_t)0xfffffff0;
 } else if (dst_port->ip_tempowner) {
  msg_flags |= KMSG_TRACE_FLAG_DTMPOWNER;
  if (IIT_NULL != dst_port->ip_imp_task)
   dst_pid = task_pid(dst_port->ip_imp_task->iit_task);
  else
   dst_pid = (uint32_t)0xfffffff1;
 } else if (dst_port->ip_receiver_name == MACH_PORT_NULL) {

  dst_pid = (uint32_t)0xfffffff2;
 } else {
  if (dst_port->ip_receiver == ipc_space_kernel) {
   dst_pid = 0;
  } else {
   ipc_space_t dst_space;
   dst_space = dst_port->ip_receiver;
   if (dst_space && is_active(dst_space)) {
    dst_pid = task_pid(dst_space->is_task);
    if (task_is_daemon(dst_space->is_task))
     msg_flags |= KMSG_TRACE_FLAG_DAEMON_DST;
    else if (task_is_app(dst_space->is_task))
     msg_flags |= KMSG_TRACE_FLAG_APP_DST;
   } else {

    dst_pid = (uint32_t)0xfffffff3;
   }
  }
 }

 if (dst_port->ip_messages.imq_qlimit != MACH_PORT_QLIMIT_DEFAULT)
  msg_flags |= KMSG_TRACE_FLAG_DST_NDFLTQ;
 if (imq_full(&dst_port->ip_messages))
  msg_flags |= KMSG_TRACE_FLAG_DSTQFULL;

 kotype = ip_kotype(dst_port);

 ip_unlock(dst_port);

 switch (kotype) {
 case 135:
  msg_flags |= KMSG_TRACE_FLAG_SEMA;
  break;
 case 134:
 case 140:
  msg_flags |= KMSG_TRACE_FLAG_TIMER;
  break;
 case 136:
 case 139:
 case 137:
 case 138:
  msg_flags |= KMSG_TRACE_FLAG_IOKIT;
  break;
 default:
  break;
 }

 switch(MACH_MSGH_BITS_REMOTE(msg->msgh_bits)) {
 case 128:
  msg_flags |= KMSG_TRACE_FLAG_DST_SONCE;
  break;
 default:
  break;
 }





 msg_size = msg->msgh_size - sizeof(mach_msg_header_t);

 if (msg->msgh_bits & MACH_MSGH_BITS_COMPLEX) {
  mach_msg_body_t *msg_body;
  mach_msg_descriptor_t *kern_dsc;
  int dsc_count;

  msg_flags |= KMSG_TRACE_FLAG_COMPLEX;

  msg_body = (mach_msg_body_t *)(kmsg->ikm_header + 1);
  dsc_count = (int)msg_body->msgh_descriptor_count;
  kern_dsc = (mach_msg_descriptor_t *)(msg_body + 1);


  if (!is_task_64bit)
   msg_size -= (dsc_count * 12);

  for (int i = 0; i < dsc_count; i++) {
   switch (kern_dsc[i].type.type) {
   case 130:
    num_ports++;
    if (is_task_64bit)
     msg_size -= 12;
    break;
   case 131:
   case 133: {
    mach_msg_ool_descriptor_t *dsc;
    dsc = (mach_msg_ool_descriptor_t *)&kern_dsc[i];
    msg_flags |= KMSG_TRACE_FLAG_OOLMEM;
    msg_size += dsc->size;
    if ((dsc->size >= MSG_OOL_SIZE_SMALL) &&
        (dsc->copy == MACH_MSG_PHYSICAL_COPY) &&
        !dsc->deallocate)
     msg_flags |= KMSG_TRACE_FLAG_PCPY;
    else if (dsc->size <= MSG_OOL_SIZE_SMALL)
     msg_flags |= KMSG_TRACE_FLAG_PCPY;
    else
     msg_flags |= KMSG_TRACE_FLAG_VCPY;
    if (is_task_64bit)
     msg_size -= 16;
    } break;
   case 132: {
    mach_msg_ool_ports_descriptor_t *dsc;
    dsc = (mach_msg_ool_ports_descriptor_t *)&kern_dsc[i];
    num_ports += dsc->count;
    if (is_task_64bit)
     msg_size -= 16;
    } break;
   default:
    break;
   }
  }
 }




 trailer = (mach_msg_trailer_t *)((vm_offset_t)msg +
      round_msg((vm_offset_t)msg->msgh_size));
 if (trailer->msgh_trailer_size <= sizeof(mach_msg_security_trailer_t)) {
  extern security_token_t KERNEL_SECURITY_TOKEN;
  mach_msg_security_trailer_t *strailer;
  strailer = (mach_msg_security_trailer_t *)trailer;




  if (memcmp(&strailer->msgh_sender,
      &KERNEL_SECURITY_TOKEN,
      sizeof(KERNEL_SECURITY_TOKEN)) == 0) {
   send_pid = 0;
   msg_flags &= ~(KMSG_TRACE_FLAG_APP_SRC | KMSG_TRACE_FLAG_DAEMON_SRC);
  }
 }

 KDBG(MACHDBG_CODE(DBG_MACH_IPC,MACH_IPC_KMSG_INFO) | DBG_FUNC_END,
   (uintptr_t)send_pid,
   (uintptr_t)dst_pid,
   (uintptr_t)msg_size,
   (uintptr_t)(
     ((msg_flags & KMSG_TRACE_FLAGS_MASK) << KMSG_TRACE_FLAGS_SHIFT) |
     ((num_ports & KMSG_TRACE_PORTS_MASK) << KMSG_TRACE_PORTS_SHIFT)
   )
 );
}
