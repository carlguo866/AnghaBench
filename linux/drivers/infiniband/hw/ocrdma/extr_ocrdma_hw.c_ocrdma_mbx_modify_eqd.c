
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ocrdma_mqe {int dummy; } ;
struct TYPE_7__ {int num_eq; TYPE_2__* set_eqd; int req; } ;
struct ocrdma_modify_eqd_req {TYPE_3__ cmd; } ;
struct TYPE_8__ {int prev_eqd; } ;
struct TYPE_5__ {int id; } ;
struct ocrdma_eq {TYPE_4__ aic_obj; TYPE_1__ q; } ;
struct ocrdma_dev {int dummy; } ;
struct TYPE_6__ {int delay_multiplier; scalar_t__ phase; int eq_id; } ;


 int ENOMEM ;
 int OCRDMA_CMD_MODIFY_EQ_DELAY ;
 int OCRDMA_SUBSYS_COMMON ;
 int kfree (struct ocrdma_modify_eqd_req*) ;
 struct ocrdma_modify_eqd_req* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_init_mch (int *,int ,int ,int) ;
 int ocrdma_mbx_cmd (struct ocrdma_dev*,struct ocrdma_mqe*) ;

__attribute__((used)) static int ocrdma_mbx_modify_eqd(struct ocrdma_dev *dev, struct ocrdma_eq *eq,
     int num)
{
 int i, status;
 struct ocrdma_modify_eqd_req *cmd;

 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_MODIFY_EQ_DELAY, sizeof(*cmd));
 if (!cmd)
  return -ENOMEM;

 ocrdma_init_mch(&cmd->cmd.req, OCRDMA_CMD_MODIFY_EQ_DELAY,
   OCRDMA_SUBSYS_COMMON, sizeof(*cmd));

 cmd->cmd.num_eq = num;
 for (i = 0; i < num; i++) {
  cmd->cmd.set_eqd[i].eq_id = eq[i].q.id;
  cmd->cmd.set_eqd[i].phase = 0;
  cmd->cmd.set_eqd[i].delay_multiplier =
    (eq[i].aic_obj.prev_eqd * 65)/100;
 }
 status = ocrdma_mbx_cmd(dev, (struct ocrdma_mqe *)cmd);

 kfree(cmd);
 return status;
}
