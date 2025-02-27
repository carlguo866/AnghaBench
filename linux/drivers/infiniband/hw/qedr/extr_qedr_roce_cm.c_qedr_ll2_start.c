
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qedr_qp {int dummy; } ;
struct qedr_dev {int gsi_ll2_handle; int rdma_ctx; TYPE_4__* ops; TYPE_3__* ndev; int cdev; } ;
struct qed_ll2_cbs {struct qedr_dev* cookie; void* tx_release_cb; int rx_release_cb; void* tx_comp_cb; int rx_comp_cb; } ;
struct TYPE_6__ {int rx_drop_ttl0_flg; int rx_vlan_removal_en; int gsi_enable; void* ai_err_no_buf; void* ai_err_packet_too_big; int tx_dest; scalar_t__ tx_tc; int tx_num_desc; int rx_num_desc; int mtu; int conn_type; } ;
struct qed_ll2_acquire_data {struct qed_ll2_cbs* cbs; int * p_connection_handle; TYPE_2__ input; } ;
struct TYPE_5__ {int max_send_wr; int max_recv_wr; } ;
struct ib_qp_init_attr {TYPE_1__ cap; } ;
typedef int data ;
struct TYPE_8__ {int (* ll2_acquire_connection ) (int ,struct qed_ll2_acquire_data*) ;int (* ll2_establish_connection ) (int ,int ) ;int (* ll2_set_mac_filter ) (int ,int *,int ) ;int (* ll2_release_connection ) (int ,int ) ;int (* ll2_terminate_connection ) (int ,int ) ;} ;
struct TYPE_7__ {int dev_addr; int mtu; } ;


 int DP_ERR (struct qedr_dev*,char*,int) ;
 void* QED_LL2_DROP_PACKET ;
 int QED_LL2_TX_DEST_NW ;
 int QED_LL2_TYPE_ROCE ;
 int memset (struct qed_ll2_acquire_data*,int ,int) ;
 int qedr_ll2_complete_rx_packet ;
 void* qedr_ll2_complete_tx_packet ;
 int qedr_ll2_release_rx_packet ;
 int stub1 (int ,struct qed_ll2_acquire_data*) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int *,int ) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int ) ;

__attribute__((used)) static int qedr_ll2_start(struct qedr_dev *dev,
     struct ib_qp_init_attr *attrs, struct qedr_qp *qp)
{
 struct qed_ll2_acquire_data data;
 struct qed_ll2_cbs cbs;
 int rc;


 cbs.rx_comp_cb = qedr_ll2_complete_rx_packet;
 cbs.tx_comp_cb = qedr_ll2_complete_tx_packet;
 cbs.rx_release_cb = qedr_ll2_release_rx_packet;
 cbs.tx_release_cb = qedr_ll2_complete_tx_packet;
 cbs.cookie = dev;

 memset(&data, 0, sizeof(data));
 data.input.conn_type = QED_LL2_TYPE_ROCE;
 data.input.mtu = dev->ndev->mtu;
 data.input.rx_num_desc = attrs->cap.max_recv_wr;
 data.input.rx_drop_ttl0_flg = 1;
 data.input.rx_vlan_removal_en = 0;
 data.input.tx_num_desc = attrs->cap.max_send_wr;
 data.input.tx_tc = 0;
 data.input.tx_dest = QED_LL2_TX_DEST_NW;
 data.input.ai_err_packet_too_big = QED_LL2_DROP_PACKET;
 data.input.ai_err_no_buf = QED_LL2_DROP_PACKET;
 data.input.gsi_enable = 1;
 data.p_connection_handle = &dev->gsi_ll2_handle;
 data.cbs = &cbs;

 rc = dev->ops->ll2_acquire_connection(dev->rdma_ctx, &data);
 if (rc) {
  DP_ERR(dev,
         "ll2 start: failed to acquire LL2 connection (rc=%d)\n",
         rc);
  return rc;
 }

 rc = dev->ops->ll2_establish_connection(dev->rdma_ctx,
      dev->gsi_ll2_handle);
 if (rc) {
  DP_ERR(dev,
         "ll2 start: failed to establish LL2 connection (rc=%d)\n",
         rc);
  goto err1;
 }

 rc = dev->ops->ll2_set_mac_filter(dev->cdev, ((void*)0), dev->ndev->dev_addr);
 if (rc)
  goto err2;

 return 0;

err2:
 dev->ops->ll2_terminate_connection(dev->rdma_ctx, dev->gsi_ll2_handle);
err1:
 dev->ops->ll2_release_connection(dev->rdma_ctx, dev->gsi_ll2_handle);

 return rc;
}
