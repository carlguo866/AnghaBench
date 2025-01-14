
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vm_map_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ mach_msg_type_name_t ;
typedef int mach_msg_return_t ;
typedef int mach_msg_body_t ;
typedef int mach_msg_bits_t ;
typedef int ipc_space_t ;
typedef int ipc_object_t ;
typedef TYPE_2__* ipc_kmsg_t ;
struct TYPE_10__ {int ith_knote; } ;
struct TYPE_9__ {TYPE_1__* ikm_header; int ikm_voucher; } ;
struct TYPE_8__ {int msgh_bits; int msgh_voucher_port; void* msgh_local_port; void* msgh_remote_port; } ;


 void* CAST_MACH_NAME_TO_PORT (int ) ;
 int IO_VALID (int ) ;
 int IP_NULL ;
 int ITH_KNOTE_PSEUDO ;
 int MACH_MSGH_BITS_COMPLEX ;
 scalar_t__ MACH_MSGH_BITS_LOCAL (int) ;
 scalar_t__ MACH_MSGH_BITS_REMOTE (int) ;
 int MACH_MSGH_BITS_USER ;
 scalar_t__ MACH_MSGH_BITS_VOUCHER (int) ;
 scalar_t__ MACH_MSG_TYPE_MOVE_SEND ;
 int assert (int) ;
 TYPE_7__* current_thread () ;
 int ipc_importance_assert_clean (TYPE_2__*) ;
 int ipc_importance_clean (TYPE_2__*) ;
 int ipc_kmsg_copyout_body (TYPE_2__*,int ,int ,int *) ;
 int ipc_kmsg_copyout_object (int ,int ,scalar_t__,int *) ;

mach_msg_return_t
ipc_kmsg_copyout_pseudo(
 ipc_kmsg_t kmsg,
 ipc_space_t space,
 vm_map_t map,
 mach_msg_body_t *slist)
{
 mach_msg_bits_t mbits = kmsg->ikm_header->msgh_bits;
 ipc_object_t dest = (ipc_object_t) kmsg->ikm_header->msgh_remote_port;
 ipc_object_t reply = (ipc_object_t) kmsg->ikm_header->msgh_local_port;
 ipc_object_t voucher = (ipc_object_t) kmsg->ikm_voucher;
 mach_msg_type_name_t dest_type = MACH_MSGH_BITS_REMOTE(mbits);
 mach_msg_type_name_t reply_type = MACH_MSGH_BITS_LOCAL(mbits);
 mach_msg_type_name_t voucher_type = MACH_MSGH_BITS_VOUCHER(mbits);
 mach_port_name_t voucher_name = kmsg->ikm_header->msgh_voucher_port;
 mach_port_name_t dest_name, reply_name;
 mach_msg_return_t mr;


 current_thread()->ith_knote = ITH_KNOTE_PSEUDO;

 assert(IO_VALID(dest));
 ipc_importance_assert_clean(kmsg);


 mr = (ipc_kmsg_copyout_object(space, dest, dest_type, &dest_name) |
       ipc_kmsg_copyout_object(space, reply, reply_type, &reply_name));

 kmsg->ikm_header->msgh_bits = mbits & MACH_MSGH_BITS_USER;
 kmsg->ikm_header->msgh_remote_port = CAST_MACH_NAME_TO_PORT(dest_name);
 kmsg->ikm_header->msgh_local_port = CAST_MACH_NAME_TO_PORT(reply_name);

 if (IO_VALID(voucher)) {
  assert(voucher_type == MACH_MSG_TYPE_MOVE_SEND);

  kmsg->ikm_voucher = IP_NULL;
  mr |= ipc_kmsg_copyout_object(space, voucher, voucher_type, &voucher_name);
  kmsg->ikm_header->msgh_voucher_port = voucher_name;
 }

 if (mbits & MACH_MSGH_BITS_COMPLEX) {
  mr |= ipc_kmsg_copyout_body(kmsg, space, map, slist);
 }

 return mr;
}
