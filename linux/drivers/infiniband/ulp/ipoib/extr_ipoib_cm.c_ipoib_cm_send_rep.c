
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipoib_dev_priv {TYPE_1__* qp; } ;
struct ipoib_cm_data {void* mtu; void* qpn; } ;
struct ib_qp {int qp_num; } ;
struct ib_cm_req_event_param {int rnr_retry_count; } ;
struct ib_cm_rep_param {int private_data_len; unsigned int starting_psn; int qp_num; int srq; int rnr_retry_count; scalar_t__ flow_control; struct ipoib_cm_data* private_data; } ;
struct ib_cm_id {int dummy; } ;
typedef int data ;
struct TYPE_2__ {int qp_num; } ;


 int IPOIB_CM_BUF_SIZE ;
 void* cpu_to_be32 (int ) ;
 int ib_send_cm_rep (struct ib_cm_id*,struct ib_cm_rep_param*) ;
 int ipoib_cm_has_srq (struct net_device*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;

__attribute__((used)) static int ipoib_cm_send_rep(struct net_device *dev, struct ib_cm_id *cm_id,
        struct ib_qp *qp,
        const struct ib_cm_req_event_param *req,
        unsigned int psn)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct ipoib_cm_data data = {};
 struct ib_cm_rep_param rep = {};

 data.qpn = cpu_to_be32(priv->qp->qp_num);
 data.mtu = cpu_to_be32(IPOIB_CM_BUF_SIZE);

 rep.private_data = &data;
 rep.private_data_len = sizeof(data);
 rep.flow_control = 0;
 rep.rnr_retry_count = req->rnr_retry_count;
 rep.srq = ipoib_cm_has_srq(dev);
 rep.qp_num = qp->qp_num;
 rep.starting_psn = psn;
 return ib_send_cm_rep(cm_id, &rep);
}
