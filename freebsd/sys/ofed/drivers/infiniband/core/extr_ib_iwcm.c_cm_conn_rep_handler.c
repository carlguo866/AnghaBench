
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int (* cm_handler ) (TYPE_3__*,struct iw_cm_event*) ;TYPE_2__* device; int remote_addr; int local_addr; int m_remote_addr; int m_local_addr; } ;
struct iwcm_id_private {scalar_t__ state; int connect_wait; TYPE_3__ id; int lock; int * qp; int flags; } ;
struct iw_cm_event {scalar_t__ status; int private_data; scalar_t__ private_data_len; int remote_addr; int local_addr; } ;
struct TYPE_5__ {TYPE_1__* iwcm; } ;
struct TYPE_4__ {int (* rem_ref ) (int *) ;} ;


 int BUG_ON (int) ;
 int IWCM_F_CONNECT_WAIT ;
 scalar_t__ IW_CM_STATE_CONN_SENT ;
 scalar_t__ IW_CM_STATE_ESTABLISHED ;
 scalar_t__ IW_CM_STATE_IDLE ;
 int clear_bit (int ,int *) ;
 int kfree (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int *) ;
 int stub2 (TYPE_3__*,struct iw_cm_event*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static int cm_conn_rep_handler(struct iwcm_id_private *cm_id_priv,
          struct iw_cm_event *iw_event)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&cm_id_priv->lock, flags);




 clear_bit(IWCM_F_CONNECT_WAIT, &cm_id_priv->flags);
 BUG_ON(cm_id_priv->state != IW_CM_STATE_CONN_SENT);
 if (iw_event->status == 0) {
  cm_id_priv->id.m_local_addr = iw_event->local_addr;
  cm_id_priv->id.m_remote_addr = iw_event->remote_addr;
  iw_event->local_addr = cm_id_priv->id.local_addr;
  iw_event->remote_addr = cm_id_priv->id.remote_addr;
  cm_id_priv->state = IW_CM_STATE_ESTABLISHED;
 } else {

  cm_id_priv->id.device->iwcm->rem_ref(cm_id_priv->qp);
  cm_id_priv->qp = ((void*)0);
  cm_id_priv->state = IW_CM_STATE_IDLE;
 }
 spin_unlock_irqrestore(&cm_id_priv->lock, flags);
 ret = cm_id_priv->id.cm_handler(&cm_id_priv->id, iw_event);

 if (iw_event->private_data_len)
  kfree(iw_event->private_data);


 wake_up_all(&cm_id_priv->connect_wait);

 return ret;
}
