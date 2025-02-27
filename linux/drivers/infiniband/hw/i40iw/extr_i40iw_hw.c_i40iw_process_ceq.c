
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_sc_dev {TYPE_1__* ceq_ops; } ;
struct i40iw_sc_cq {scalar_t__ cq_type; } ;
struct i40iw_sc_ceq {int dummy; } ;
struct i40iw_device {struct i40iw_sc_dev sc_dev; } ;
struct i40iw_ceq {struct i40iw_sc_ceq sc_ceq; } ;
struct TYPE_2__ {struct i40iw_sc_cq* (* process_ceq ) (struct i40iw_sc_dev*,struct i40iw_sc_ceq*) ;} ;


 scalar_t__ I40IW_CQ_TYPE_CQP ;
 scalar_t__ I40IW_CQ_TYPE_IEQ ;
 scalar_t__ I40IW_CQ_TYPE_ILQ ;
 scalar_t__ I40IW_CQ_TYPE_IWARP ;
 int i40iw_cqp_ce_handler (struct i40iw_device*,struct i40iw_sc_cq*,int) ;
 int i40iw_iwarp_ce_handler (struct i40iw_device*,struct i40iw_sc_cq*) ;
 int i40iw_puda_ce_handler (struct i40iw_device*,struct i40iw_sc_cq*) ;
 struct i40iw_sc_cq* stub1 (struct i40iw_sc_dev*,struct i40iw_sc_ceq*) ;

void i40iw_process_ceq(struct i40iw_device *iwdev, struct i40iw_ceq *ceq)
{
 struct i40iw_sc_dev *dev = &iwdev->sc_dev;
 struct i40iw_sc_ceq *sc_ceq;
 struct i40iw_sc_cq *cq;
 bool arm = 1;

 sc_ceq = &ceq->sc_ceq;
 do {
  cq = dev->ceq_ops->process_ceq(dev, sc_ceq);
  if (!cq)
   break;

  if (cq->cq_type == I40IW_CQ_TYPE_CQP)
   i40iw_cqp_ce_handler(iwdev, cq, arm);
  else if (cq->cq_type == I40IW_CQ_TYPE_IWARP)
   i40iw_iwarp_ce_handler(iwdev, cq);
  else if ((cq->cq_type == I40IW_CQ_TYPE_ILQ) ||
    (cq->cq_type == I40IW_CQ_TYPE_IEQ))
   i40iw_puda_ce_handler(iwdev, cq);
 } while (1);
}
