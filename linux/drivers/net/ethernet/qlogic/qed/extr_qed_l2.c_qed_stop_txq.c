
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int num_hwfns; struct qed_hwfn* hwfns; } ;


 int DP_ERR (struct qed_dev*,char*,int) ;
 int qed_eth_tx_queue_stop (struct qed_hwfn*,void*) ;

__attribute__((used)) static int qed_stop_txq(struct qed_dev *cdev, u8 rss_id, void *handle)
{
 struct qed_hwfn *p_hwfn;
 int rc, hwfn_index;

 hwfn_index = rss_id % cdev->num_hwfns;
 p_hwfn = &cdev->hwfns[hwfn_index];

 rc = qed_eth_tx_queue_stop(p_hwfn, handle);
 if (rc) {
  DP_ERR(cdev, "Failed to stop TXQ#%02x\n", rss_id);
  return rc;
 }

 return 0;
}
