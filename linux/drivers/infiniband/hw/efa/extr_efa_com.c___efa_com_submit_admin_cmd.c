
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct efa_comp_ctx {size_t comp_size; int wait_event; int cmd_opcode; struct efa_admin_acq_entry* user_cqe; int status; } ;
struct TYPE_6__ {size_t pc; int phase; int db_addr; int * entries; } ;
struct TYPE_5__ {int submitted_cmd; } ;
struct efa_com_admin_queue {size_t depth; TYPE_3__ sq; TYPE_2__ stats; } ;
struct TYPE_4__ {size_t command_id; int flags; int opcode; } ;
struct efa_admin_aq_entry {TYPE_1__ aq_common_descriptor; } ;
struct efa_admin_acq_entry {int dummy; } ;


 size_t EFA_ADMIN_AQ_COMMON_DESC_COMMAND_ID_MASK ;
 int EFA_ADMIN_AQ_COMMON_DESC_PHASE_MASK ;
 int EFA_CMD_SUBMITTED ;
 int EINVAL ;
 struct efa_comp_ctx* ERR_PTR (int ) ;
 int atomic64_inc (int *) ;
 size_t efa_com_alloc_ctx_id (struct efa_com_admin_queue*) ;
 int efa_com_dealloc_ctx_id (struct efa_com_admin_queue*,size_t) ;
 struct efa_comp_ctx* efa_com_get_comp_ctx (struct efa_com_admin_queue*,size_t,int) ;
 int memcpy (int *,struct efa_admin_aq_entry*,size_t) ;
 int reinit_completion (int *) ;
 int writel (size_t,int ) ;

__attribute__((used)) static struct efa_comp_ctx *__efa_com_submit_admin_cmd(struct efa_com_admin_queue *aq,
             struct efa_admin_aq_entry *cmd,
             size_t cmd_size_in_bytes,
             struct efa_admin_acq_entry *comp,
             size_t comp_size_in_bytes)
{
 struct efa_comp_ctx *comp_ctx;
 u16 queue_size_mask;
 u16 cmd_id;
 u16 ctx_id;
 u16 pi;

 queue_size_mask = aq->depth - 1;
 pi = aq->sq.pc & queue_size_mask;

 ctx_id = efa_com_alloc_ctx_id(aq);


 cmd_id = ctx_id & queue_size_mask;
 cmd_id |= aq->sq.pc & ~queue_size_mask;
 cmd_id &= EFA_ADMIN_AQ_COMMON_DESC_COMMAND_ID_MASK;

 cmd->aq_common_descriptor.command_id = cmd_id;
 cmd->aq_common_descriptor.flags |= aq->sq.phase &
  EFA_ADMIN_AQ_COMMON_DESC_PHASE_MASK;

 comp_ctx = efa_com_get_comp_ctx(aq, cmd_id, 1);
 if (!comp_ctx) {
  efa_com_dealloc_ctx_id(aq, ctx_id);
  return ERR_PTR(-EINVAL);
 }

 comp_ctx->status = EFA_CMD_SUBMITTED;
 comp_ctx->comp_size = comp_size_in_bytes;
 comp_ctx->user_cqe = comp;
 comp_ctx->cmd_opcode = cmd->aq_common_descriptor.opcode;

 reinit_completion(&comp_ctx->wait_event);

 memcpy(&aq->sq.entries[pi], cmd, cmd_size_in_bytes);

 aq->sq.pc++;
 atomic64_inc(&aq->stats.submitted_cmd);

 if ((aq->sq.pc & queue_size_mask) == 0)
  aq->sq.phase = !aq->sq.phase;


 writel(aq->sq.pc, aq->sq.db_addr);

 return comp_ctx;
}
