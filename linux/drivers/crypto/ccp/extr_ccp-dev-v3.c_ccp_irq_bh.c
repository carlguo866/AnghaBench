
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccp_device {unsigned int cmd_q_count; scalar_t__ io_regs; struct ccp_cmd_queue* cmd_q; } ;
struct ccp_cmd_queue {int int_ok; int int_err; int int_status; int int_rcvd; int int_queue; void* q_status; scalar_t__ cmd_error; scalar_t__ reg_int_status; void* q_int_status; scalar_t__ reg_status; } ;


 scalar_t__ CMD_Q_ERROR (void*) ;
 scalar_t__ IRQ_STATUS_REG ;
 int ccp_enable_queue_interrupts (struct ccp_device*) ;
 void* ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void ccp_irq_bh(unsigned long data)
{
 struct ccp_device *ccp = (struct ccp_device *)data;
 struct ccp_cmd_queue *cmd_q;
 u32 q_int, status;
 unsigned int i;

 status = ioread32(ccp->io_regs + IRQ_STATUS_REG);

 for (i = 0; i < ccp->cmd_q_count; i++) {
  cmd_q = &ccp->cmd_q[i];

  q_int = status & (cmd_q->int_ok | cmd_q->int_err);
  if (q_int) {
   cmd_q->int_status = status;
   cmd_q->q_status = ioread32(cmd_q->reg_status);
   cmd_q->q_int_status = ioread32(cmd_q->reg_int_status);


   if ((q_int & cmd_q->int_err) && !cmd_q->cmd_error)
    cmd_q->cmd_error = CMD_Q_ERROR(cmd_q->q_status);

   cmd_q->int_rcvd = 1;


   iowrite32(q_int, ccp->io_regs + IRQ_STATUS_REG);
   wake_up_interruptible(&cmd_q->int_queue);
  }
 }
 ccp_enable_queue_interrupts(ccp);
}
