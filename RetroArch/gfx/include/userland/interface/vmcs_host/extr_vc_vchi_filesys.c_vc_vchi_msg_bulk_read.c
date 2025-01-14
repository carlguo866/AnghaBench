
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ int32_t ;
struct TYPE_6__ {int cur_xid; int open_handle; int response_event; } ;
struct TYPE_5__ {int xid; scalar_t__ cmd_code; scalar_t__* params; int * data; } ;
typedef TYPE_1__ FILESERV_MSG_T ;


 scalar_t__ FILESERV_BULK_WRITE ;
 scalar_t__ FILESERV_MAX_BULK ;
 scalar_t__ FILESERV_MAX_DATA ;
 scalar_t__ FILESERV_RESP_ERROR ;
 scalar_t__ FILESERV_RESP_OK ;
 scalar_t__ VCHI_BULK_ALIGN_NBYTES (int *) ;
 int VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE ;
 int VCHI_FLAGS_BLOCK_UNTIL_QUEUED ;
 scalar_t__ VCOS_SUCCESS ;
 int memcpy (int *,int *,scalar_t__) ;
 TYPE_4__ vc_filesys_client ;
 scalar_t__ vchi_bulk_queue_receive (int ,int *,scalar_t__,int ,int *) ;
 scalar_t__ vchi_msg_queue (int ,TYPE_1__*,scalar_t__,int ,int *) ;
 scalar_t__ vcos_event_wait (int *) ;
 int vcos_verify (int) ;

__attribute__((used)) static int vc_vchi_msg_bulk_read(FILESERV_MSG_T* msg, uint16_t cmd_id, uint32_t transfer_len, uint8_t* recv_addr )
{
   uint32_t i;
   int msg_len;
   uint32_t host_align_bytes;
   uint32_t num_bytes_read;
   int32_t success;



   if(!vcos_verify(transfer_len <= FILESERV_MAX_BULK))
      return -1;


   host_align_bytes = VCHI_BULK_ALIGN_NBYTES(recv_addr);

   i = vc_filesys_client.cur_xid + 1;
   i &= 0x7fffffffUL;
   vc_filesys_client.cur_xid = i;

   msg->xid = vc_filesys_client.cur_xid;


   msg->cmd_code = cmd_id;

   msg->params[2] = transfer_len;

   msg->params[3] = host_align_bytes;


   msg_len = 24;

   if(vchi_msg_queue( vc_filesys_client.open_handle, msg, (uint32_t)msg_len, VCHI_FLAGS_BLOCK_UNTIL_QUEUED, ((void*)0) ) != 0)
      return -1;


   if(vcos_event_wait(&vc_filesys_client.response_event) != VCOS_SUCCESS || msg->cmd_code == FILESERV_RESP_ERROR)
      return -1;


   num_bytes_read = msg->params[0];

   if(!vcos_verify(num_bytes_read <= FILESERV_MAX_BULK))
      return -1;


   if(msg->cmd_code == FILESERV_RESP_OK) {
      if(!vcos_verify(num_bytes_read <= FILESERV_MAX_DATA))
         return -1;

      memcpy(recv_addr, msg->data, num_bytes_read);
      return (int) num_bytes_read;
   }
   if(msg->cmd_code == FILESERV_BULK_WRITE){

      uint32_t end_bytes = msg->params[1];

      uint32_t bulk_bytes = (num_bytes_read-host_align_bytes-end_bytes);

      success = vchi_bulk_queue_receive(vc_filesys_client.open_handle,
                              recv_addr,
                              bulk_bytes,
                              VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE,
                              ((void*)0) );
      if(!vcos_verify(success == 0))
         return -1;

      recv_addr+=bulk_bytes;


      if(end_bytes)
         memcpy(recv_addr, &msg->data[host_align_bytes], end_bytes);
   }
   else {
      return -1;
   }

   return (int) num_bytes_read;
}
