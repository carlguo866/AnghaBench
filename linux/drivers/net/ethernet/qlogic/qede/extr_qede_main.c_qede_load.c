
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct qed_link_params {int link_up; } ;
struct TYPE_8__ {struct qed_link_params msix_cnt; } ;
struct TYPE_6__ {int num_hwfns; } ;
struct TYPE_7__ {scalar_t__ num_tc; TYPE_1__ common; } ;
struct qede_dev {scalar_t__ fp_num_rx; scalar_t__ fp_num_tx; scalar_t__ num_queues; int cdev; TYPE_5__* ops; TYPE_3__ int_info; int state; int flags; int ndev; TYPE_2__ dev_info; } ;
struct qed_int_info {int dummy; } ;
typedef int link_params ;
typedef enum qede_load_mode { ____Placeholder_qede_load_mode } qede_load_mode ;
struct TYPE_10__ {TYPE_4__* common; } ;
struct TYPE_9__ {int (* set_fp_int ) (int ,int ) ;int (* set_link ) (int ,struct qed_link_params*) ;} ;


 int DP_INFO (struct qede_dev*,char*,...) ;
 int DP_NOTICE (struct qede_dev*,char*) ;
 int IS_VF (struct qede_dev*) ;
 int QEDE_FLAGS_LINK_REQUESTED ;
 int QEDE_LOAD_RELOAD ;
 int QEDE_RSS_COUNT (struct qede_dev*) ;
 int QEDE_STATE_OPEN ;
 int QEDE_TSS_COUNT (struct qede_dev*) ;
 int __qede_lock (struct qede_dev*) ;
 int __qede_unlock (struct qede_dev*) ;
 int memset (struct qed_link_params*,int ,int) ;
 scalar_t__ netdev_get_num_tc (int ) ;
 int qede_alloc_arfs (struct qede_dev*) ;
 int qede_alloc_fp_array (struct qede_dev*) ;
 int qede_alloc_mem_load (struct qede_dev*) ;
 int qede_configure_vlan_filters (struct qede_dev*) ;
 int qede_free_fp_array (struct qede_dev*) ;
 int qede_free_mem_load (struct qede_dev*) ;
 int qede_init_fp (struct qede_dev*) ;
 int qede_napi_add_enable (struct qede_dev*) ;
 int qede_napi_disable_remove (struct qede_dev*) ;
 int qede_set_num_queues (struct qede_dev*) ;
 int qede_set_real_num_queues (struct qede_dev*) ;
 int qede_setup_irqs (struct qede_dev*) ;
 int qede_setup_tc (int ,scalar_t__) ;
 int qede_start_queues (struct qede_dev*,int) ;
 int qede_sync_free_irqs (struct qede_dev*) ;
 int set_bit (int ,int *) ;
 int stub1 (int ,struct qed_link_params*) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static int qede_load(struct qede_dev *edev, enum qede_load_mode mode,
       bool is_locked)
{
 struct qed_link_params link_params;
 u8 num_tc;
 int rc;

 DP_INFO(edev, "Starting qede load\n");

 if (!is_locked)
  __qede_lock(edev);

 rc = qede_set_num_queues(edev);
 if (rc)
  goto out;

 rc = qede_alloc_fp_array(edev);
 if (rc)
  goto out;

 qede_init_fp(edev);

 rc = qede_alloc_mem_load(edev);
 if (rc)
  goto err1;
 DP_INFO(edev, "Allocated %d Rx, %d Tx queues\n",
  QEDE_RSS_COUNT(edev), QEDE_TSS_COUNT(edev));

 rc = qede_set_real_num_queues(edev);
 if (rc)
  goto err2;

 if (!IS_VF(edev) && edev->dev_info.common.num_hwfns == 1) {
  rc = qede_alloc_arfs(edev);
  if (rc)
   DP_NOTICE(edev, "aRFS memory allocation failed\n");
 }

 qede_napi_add_enable(edev);
 DP_INFO(edev, "Napi added and enabled\n");

 rc = qede_setup_irqs(edev);
 if (rc)
  goto err3;
 DP_INFO(edev, "Setup IRQs succeeded\n");

 rc = qede_start_queues(edev, mode != QEDE_LOAD_RELOAD);
 if (rc)
  goto err4;
 DP_INFO(edev, "Start VPORT, RXQ and TXQ succeeded\n");

 num_tc = netdev_get_num_tc(edev->ndev);
 num_tc = num_tc ? num_tc : edev->dev_info.num_tc;
 qede_setup_tc(edev->ndev, num_tc);


 qede_configure_vlan_filters(edev);

 set_bit(QEDE_FLAGS_LINK_REQUESTED, &edev->flags);


 memset(&link_params, 0, sizeof(link_params));
 link_params.link_up = 1;
 edev->ops->common->set_link(edev->cdev, &link_params);

 edev->state = QEDE_STATE_OPEN;

 DP_INFO(edev, "Ending successfully qede load\n");

 goto out;
err4:
 qede_sync_free_irqs(edev);
 memset(&edev->int_info.msix_cnt, 0, sizeof(struct qed_int_info));
err3:
 qede_napi_disable_remove(edev);
err2:
 qede_free_mem_load(edev);
err1:
 edev->ops->common->set_fp_int(edev->cdev, 0);
 qede_free_fp_array(edev);
 edev->num_queues = 0;
 edev->fp_num_tx = 0;
 edev->fp_num_rx = 0;
out:
 if (!is_locked)
  __qede_unlock(edev);

 return rc;
}
