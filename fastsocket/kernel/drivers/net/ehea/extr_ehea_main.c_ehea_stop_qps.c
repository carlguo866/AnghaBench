
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct hcp_modify_qp_cb0 {int qp_ctl_reg; } ;
struct ehea_qp {int fw_handle; } ;
struct ehea_port_res {struct ehea_qp* qp; } ;
struct ehea_port {int num_def_qps; struct ehea_port_res* port_res; struct ehea_adapter* adapter; } ;
struct ehea_adapter {int handle; } ;


 int EHEA_BMASK_SET (int ,int) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int H_QPCB0_ALL ;
 int H_QPCB0_QP_CTL_REG ;
 int H_QP_CR_ENABLED ;
 int H_QP_CR_RES_STATE ;
 scalar_t__ H_SUCCESS ;
 int ehea_error (char*) ;
 scalar_t__ ehea_h_modify_ehea_qp (int ,int ,int ,int ,struct hcp_modify_qp_cb0*,scalar_t__*,scalar_t__*,int *,int *) ;
 scalar_t__ ehea_h_query_ehea_qp (int ,int ,int ,int ,struct hcp_modify_qp_cb0*) ;
 int ehea_purge_sq (struct ehea_qp*) ;
 int ehea_rem_smrs (struct ehea_port_res*) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 struct ehea_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ehea_stop_qps(struct net_device *dev)
{
 struct ehea_port *port = netdev_priv(dev);
 struct ehea_adapter *adapter = port->adapter;
 struct hcp_modify_qp_cb0 *cb0;
 int ret = -EIO;
 int dret;
 int i;
 u64 hret;
 u64 dummy64 = 0;
 u16 dummy16 = 0;

 cb0 = (void *)get_zeroed_page(GFP_KERNEL);
 if (!cb0) {
  ret = -ENOMEM;
  goto out;
 }

 for (i = 0; i < (port->num_def_qps); i++) {
  struct ehea_port_res *pr = &port->port_res[i];
  struct ehea_qp *qp = pr->qp;


  ehea_purge_sq(qp);


  hret = ehea_h_query_ehea_qp(adapter->handle, 0, qp->fw_handle,
         EHEA_BMASK_SET(H_QPCB0_ALL, 0xFFFF),
         cb0);
  if (hret != H_SUCCESS) {
   ehea_error("query_ehea_qp failed (1)");
   goto out;
  }

  cb0->qp_ctl_reg = (cb0->qp_ctl_reg & H_QP_CR_RES_STATE) << 8;
  cb0->qp_ctl_reg &= ~H_QP_CR_ENABLED;

  hret = ehea_h_modify_ehea_qp(adapter->handle, 0, qp->fw_handle,
          EHEA_BMASK_SET(H_QPCB0_QP_CTL_REG,
           1), cb0, &dummy64,
          &dummy64, &dummy16, &dummy16);
  if (hret != H_SUCCESS) {
   ehea_error("modify_ehea_qp failed (1)");
   goto out;
  }

  hret = ehea_h_query_ehea_qp(adapter->handle, 0, qp->fw_handle,
         EHEA_BMASK_SET(H_QPCB0_ALL, 0xFFFF),
         cb0);
  if (hret != H_SUCCESS) {
   ehea_error("query_ehea_qp failed (2)");
   goto out;
  }


  dret = ehea_rem_smrs(pr);
  if (dret) {
   ehea_error("unreg shared memory region failed");
   goto out;
  }
 }

 ret = 0;
out:
 free_page((unsigned long)cb0);

 return ret;
}
