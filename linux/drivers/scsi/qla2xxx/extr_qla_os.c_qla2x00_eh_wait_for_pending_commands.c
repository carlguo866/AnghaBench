
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct scsi_cmnd {TYPE_2__* device; } ;
struct req_que {int num_outstanding_cmds; TYPE_3__** outstanding_cmds; } ;
struct qla_hw_data {int hardware_lock; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__* vha; } ;
typedef TYPE_3__ srb_t ;
struct TYPE_10__ {scalar_t__ vp_idx; struct req_que* req; struct qla_hw_data* hw; } ;
typedef TYPE_4__ scsi_qla_host_t ;
typedef enum nexus_wait_type { ____Placeholder_nexus_wait_type } nexus_wait_type ;
struct TYPE_8__ {unsigned int id; int lun; } ;
struct TYPE_7__ {scalar_t__ vp_idx; } ;


 struct scsi_cmnd* GET_CMD_SP (TYPE_3__*) ;
 int QLA_SUCCESS ;
 scalar_t__ SRB_SCSI_CMD ;



 int qla2x00_eh_wait_on_command (struct scsi_cmnd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
qla2x00_eh_wait_for_pending_commands(scsi_qla_host_t *vha, unsigned int t,
 uint64_t l, enum nexus_wait_type type)
{
 int cnt, match, status;
 unsigned long flags;
 struct qla_hw_data *ha = vha->hw;
 struct req_que *req;
 srb_t *sp;
 struct scsi_cmnd *cmd;

 status = QLA_SUCCESS;

 spin_lock_irqsave(&ha->hardware_lock, flags);
 req = vha->req;
 for (cnt = 1; status == QLA_SUCCESS &&
  cnt < req->num_outstanding_cmds; cnt++) {
  sp = req->outstanding_cmds[cnt];
  if (!sp)
   continue;
  if (sp->type != SRB_SCSI_CMD)
   continue;
  if (vha->vp_idx != sp->vha->vp_idx)
   continue;
  match = 0;
  cmd = GET_CMD_SP(sp);
  switch (type) {
  case 130:
   match = 1;
   break;
  case 128:
   match = cmd->device->id == t;
   break;
  case 129:
   match = (cmd->device->id == t &&
    cmd->device->lun == l);
   break;
  }
  if (!match)
   continue;

  spin_unlock_irqrestore(&ha->hardware_lock, flags);
  status = qla2x00_eh_wait_on_command(cmd);
  spin_lock_irqsave(&ha->hardware_lock, flags);
 }
 spin_unlock_irqrestore(&ha->hardware_lock, flags);

 return status;
}
