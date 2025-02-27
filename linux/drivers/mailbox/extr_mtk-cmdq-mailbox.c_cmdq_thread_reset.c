
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cmdq_thread {scalar_t__ base; } ;
struct TYPE_2__ {int dev; } ;
struct cmdq {scalar_t__ base; TYPE_1__ mbox; } ;


 int CMDQ_THR_DO_WARM_RESET ;
 scalar_t__ CMDQ_THR_WARM_RESET ;
 int EFAULT ;
 int dev_err (int ,char*,int) ;
 scalar_t__ readl_poll_timeout_atomic (scalar_t__,int,int,int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int cmdq_thread_reset(struct cmdq *cmdq, struct cmdq_thread *thread)
{
 u32 warm_reset;

 writel(CMDQ_THR_DO_WARM_RESET, thread->base + CMDQ_THR_WARM_RESET);
 if (readl_poll_timeout_atomic(thread->base + CMDQ_THR_WARM_RESET,
   warm_reset, !(warm_reset & CMDQ_THR_DO_WARM_RESET),
   0, 10)) {
  dev_err(cmdq->mbox.dev, "reset GCE thread 0x%x failed\n",
   (u32)(thread->base - cmdq->base));
  return -EFAULT;
 }

 return 0;
}
