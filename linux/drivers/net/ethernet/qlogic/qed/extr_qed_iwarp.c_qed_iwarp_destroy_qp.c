
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_rdma_qp {scalar_t__ iwarp_state; int shared_queue_phys_addr; scalar_t__ shared_queue; struct qed_iwarp_ep* ep; } ;
struct qed_iwarp_ep {scalar_t__ state; } ;
struct qed_hwfn {TYPE_2__* cdev; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,scalar_t__) ;
 int IWARP_SHARED_QUEUE_PAGE_SIZE ;
 scalar_t__ QED_IWARP_EP_CLOSED ;
 scalar_t__ QED_IWARP_QP_STATE_ERROR ;
 scalar_t__ READ_ONCE (scalar_t__) ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int msleep (int) ;
 int qed_iwarp_destroy_ep (struct qed_hwfn*,struct qed_iwarp_ep*,int) ;
 int qed_iwarp_fw_destroy (struct qed_hwfn*,struct qed_rdma_qp*) ;
 int qed_iwarp_modify_qp (struct qed_hwfn*,struct qed_rdma_qp*,scalar_t__,int) ;

int qed_iwarp_destroy_qp(struct qed_hwfn *p_hwfn, struct qed_rdma_qp *qp)
{
 struct qed_iwarp_ep *ep = qp->ep;
 int wait_count = 0;
 int rc = 0;

 if (qp->iwarp_state != QED_IWARP_QP_STATE_ERROR) {
  rc = qed_iwarp_modify_qp(p_hwfn, qp,
      QED_IWARP_QP_STATE_ERROR, 0);
  if (rc)
   return rc;
 }


 if (ep) {
  while (READ_ONCE(ep->state) != QED_IWARP_EP_CLOSED &&
         wait_count++ < 200)
   msleep(100);

  if (ep->state != QED_IWARP_EP_CLOSED)
   DP_NOTICE(p_hwfn, "ep state close timeout state=%x\n",
      ep->state);

  qed_iwarp_destroy_ep(p_hwfn, ep, 0);
 }

 rc = qed_iwarp_fw_destroy(p_hwfn, qp);

 if (qp->shared_queue)
  dma_free_coherent(&p_hwfn->cdev->pdev->dev,
      IWARP_SHARED_QUEUE_PAGE_SIZE,
      qp->shared_queue, qp->shared_queue_phys_addr);

 return rc;
}
