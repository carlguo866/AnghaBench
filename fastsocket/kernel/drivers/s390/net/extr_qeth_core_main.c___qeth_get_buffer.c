
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {scalar_t__ state; int data; } ;
struct qeth_channel {size_t io_buf_no; struct qeth_cmd_buffer* iob; } ;
typedef size_t __u8 ;


 scalar_t__ BUF_STATE_FREE ;
 scalar_t__ BUF_STATE_LOCKED ;
 int QETH_BUFSIZE ;
 int QETH_CMD_BUFFER_NO ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static struct qeth_cmd_buffer *__qeth_get_buffer(struct qeth_channel *channel)
{
 __u8 index;

 QETH_DBF_TEXT(TRACE, 6, "getbuff");
 index = channel->io_buf_no;
 do {
  if (channel->iob[index].state == BUF_STATE_FREE) {
   channel->iob[index].state = BUF_STATE_LOCKED;
   channel->io_buf_no = (channel->io_buf_no + 1) %
    QETH_CMD_BUFFER_NO;
   memset(channel->iob[index].data, 0, QETH_BUFSIZE);
   return channel->iob + index;
  }
  index = (index + 1) % QETH_CMD_BUFFER_NO;
 } while (index != channel->io_buf_no);

 return ((void*)0);
}
