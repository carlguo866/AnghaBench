
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etrax_recv_buffer {scalar_t__ length; struct etrax_recv_buffer* next; } ;
struct e100_serial {scalar_t__ recv_cnt; scalar_t__ max_recv_cnt; struct etrax_recv_buffer* last_recv_buffer; struct etrax_recv_buffer* first_recv_buffer; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void
append_recv_buffer(struct e100_serial *info, struct etrax_recv_buffer *buffer)
{
 unsigned long flags;

 local_irq_save(flags);

 if (!info->first_recv_buffer)
  info->first_recv_buffer = buffer;
 else
  info->last_recv_buffer->next = buffer;

 info->last_recv_buffer = buffer;

 info->recv_cnt += buffer->length;
 if (info->recv_cnt > info->max_recv_cnt)
  info->max_recv_cnt = info->recv_cnt;

 local_irq_restore(flags);
}
