
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipr_ioa_cfg {int scsi_unblock; int hrrq_num; int reset_wait_q; TYPE_1__* hrrq; scalar_t__ reset_retries; scalar_t__ in_reset_reload; int work_q; } ;
struct ipr_cmnd {TYPE_2__* hrrq; int queue; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_4__ {int hrrq_free_q; } ;
struct TYPE_3__ {int ioa_is_dead; int _lock; int removing_ioa; } ;


 int ENTER ;
 size_t IPR_INIT_HRRQ ;
 int IPR_RC_JOB_RETURN ;
 int LEAVE ;
 int ipr_trace ;
 int list_add_tail (int *,int *) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all (int *) ;
 int wmb () ;

__attribute__((used)) static int ipr_ioa_bringdown_done(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 int i;

 ENTER;
 if (!ioa_cfg->hrrq[IPR_INIT_HRRQ].removing_ioa) {
  ipr_trace;
  ioa_cfg->scsi_unblock = 1;
  schedule_work(&ioa_cfg->work_q);
 }

 ioa_cfg->in_reset_reload = 0;
 ioa_cfg->reset_retries = 0;
 for (i = 0; i < ioa_cfg->hrrq_num; i++) {
  spin_lock(&ioa_cfg->hrrq[i]._lock);
  ioa_cfg->hrrq[i].ioa_is_dead = 1;
  spin_unlock(&ioa_cfg->hrrq[i]._lock);
 }
 wmb();

 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
 wake_up_all(&ioa_cfg->reset_wait_q);
 LEAVE;

 return IPR_RC_JOB_RETURN;
}
