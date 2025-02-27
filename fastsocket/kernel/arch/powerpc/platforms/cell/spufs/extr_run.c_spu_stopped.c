
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int class_1_dsisr; scalar_t__ class_0_pending; } ;
struct spu_context {TYPE_1__ csa; int sched_flags; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* status_read ) (struct spu_context*) ;} ;


 int MFC_DSISR_ACCESS_DENIED ;
 int MFC_DSISR_PTE_NOT_FOUND ;
 int SPU_SCHED_NOTIFY_ACTIVE ;
 int SPU_STATUS_INVALID_INSTR ;
 int SPU_STATUS_RUNNING ;
 int SPU_STATUS_SINGLE_STEP ;
 int SPU_STATUS_STOPPED_BY_HALT ;
 int SPU_STATUS_STOPPED_BY_STOP ;
 int stub1 (struct spu_context*) ;
 scalar_t__ test_bit (int ,int *) ;

int spu_stopped(struct spu_context *ctx, u32 *stat)
{
 u64 dsisr;
 u32 stopped;

 stopped = SPU_STATUS_INVALID_INSTR | SPU_STATUS_SINGLE_STEP |
  SPU_STATUS_STOPPED_BY_HALT | SPU_STATUS_STOPPED_BY_STOP;

top:
 *stat = ctx->ops->status_read(ctx);
 if (*stat & stopped) {




  if (*stat & SPU_STATUS_RUNNING)
   goto top;
  return 1;
 }

 if (test_bit(SPU_SCHED_NOTIFY_ACTIVE, &ctx->sched_flags))
  return 1;

 dsisr = ctx->csa.class_1_dsisr;
 if (dsisr & (MFC_DSISR_PTE_NOT_FOUND | MFC_DSISR_ACCESS_DENIED))
  return 1;

 if (ctx->csa.class_0_pending)
  return 1;

 return 0;
}
