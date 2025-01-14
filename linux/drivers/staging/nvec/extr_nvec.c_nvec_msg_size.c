
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvec_msg {int* data; scalar_t__ size; scalar_t__ pos; } ;


 int NVEC_2BYTES ;
 int NVEC_3BYTES ;
 int NVEC_VAR_SIZE ;
 int nvec_msg_is_event (struct nvec_msg*) ;

__attribute__((used)) static size_t nvec_msg_size(struct nvec_msg *msg)
{
 bool is_event = nvec_msg_is_event(msg);
 int event_length = (msg->data[0] & 0x60) >> 5;


 if (!is_event || event_length == NVEC_VAR_SIZE)
  return (msg->pos || msg->size) ? (msg->data[1] + 2) : 0;
 else if (event_length == NVEC_2BYTES)
  return 2;
 else if (event_length == NVEC_3BYTES)
  return 3;
 return 0;
}
