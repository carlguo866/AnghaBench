
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {int command; } ;
struct TYPE_4__ {int is_last; scalar_t__ size; scalar_t__ offset; int xfer_mode; TYPE_1__ hdr; } ;
struct loader_xfer_ipc_fragment {TYPE_2__ fragment; int data; } ;
struct loader_msg_hdr {int dummy; } ;
struct ishtp_cl_data {int flag_retry; } ;
struct firmware {scalar_t__ size; int * data; } ;
typedef int ldr_xfer_ipc_ack ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IPC_FRAGMENT_DATA_PREAMBLE ;
 int LOADER_CMD_XFER_FRAGMENT ;
 scalar_t__ LOADER_SHIM_IPC_BUF_SIZE ;
 int LOADER_XFER_MODE_ISHTP ;
 int cl_data_to_dev (struct ishtp_cl_data*) ;
 int dev_dbg (int ,char*,scalar_t__,scalar_t__,int) ;
 int kfree (struct loader_xfer_ipc_fragment*) ;
 struct loader_xfer_ipc_fragment* kzalloc (scalar_t__,int ) ;
 int loader_cl_send (struct ishtp_cl_data*,int *,scalar_t__,int *,int) ;
 int memcpy (int ,int *,scalar_t__) ;

__attribute__((used)) static int ish_fw_xfer_ishtp(struct ishtp_cl_data *client_data,
        const struct firmware *fw)
{
 int rv;
 u32 fragment_offset, fragment_size, payload_max_size;
 struct loader_xfer_ipc_fragment *ldr_xfer_ipc_frag;
 struct loader_msg_hdr ldr_xfer_ipc_ack;

 payload_max_size =
  LOADER_SHIM_IPC_BUF_SIZE - IPC_FRAGMENT_DATA_PREAMBLE;

 ldr_xfer_ipc_frag = kzalloc(LOADER_SHIM_IPC_BUF_SIZE, GFP_KERNEL);
 if (!ldr_xfer_ipc_frag) {
  client_data->flag_retry = 1;
  return -ENOMEM;
 }

 ldr_xfer_ipc_frag->fragment.hdr.command = LOADER_CMD_XFER_FRAGMENT;
 ldr_xfer_ipc_frag->fragment.xfer_mode = LOADER_XFER_MODE_ISHTP;


 fragment_offset = 0;
 while (fragment_offset < fw->size) {
  if (fragment_offset + payload_max_size < fw->size) {
   fragment_size = payload_max_size;
   ldr_xfer_ipc_frag->fragment.is_last = 0;
  } else {
   fragment_size = fw->size - fragment_offset;
   ldr_xfer_ipc_frag->fragment.is_last = 1;
  }

  ldr_xfer_ipc_frag->fragment.offset = fragment_offset;
  ldr_xfer_ipc_frag->fragment.size = fragment_size;
  memcpy(ldr_xfer_ipc_frag->data,
         &fw->data[fragment_offset],
         fragment_size);

  dev_dbg(cl_data_to_dev(client_data),
   "xfer_mode=ipc offset=0x%08x size=0x%08x is_last=%d\n",
   ldr_xfer_ipc_frag->fragment.offset,
   ldr_xfer_ipc_frag->fragment.size,
   ldr_xfer_ipc_frag->fragment.is_last);

  rv = loader_cl_send(client_data,
        (u8 *)ldr_xfer_ipc_frag,
        IPC_FRAGMENT_DATA_PREAMBLE + fragment_size,
        (u8 *)&ldr_xfer_ipc_ack,
        sizeof(ldr_xfer_ipc_ack));
  if (rv < 0) {
   client_data->flag_retry = 1;
   goto end_err_resp_buf_release;
  }

  fragment_offset += fragment_size;
 }

 kfree(ldr_xfer_ipc_frag);
 return 0;

end_err_resp_buf_release:

 kfree(ldr_xfer_ipc_frag);
 return rv;
}
