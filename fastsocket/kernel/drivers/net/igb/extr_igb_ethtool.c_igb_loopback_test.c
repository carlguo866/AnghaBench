
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ mac; } ;
struct igb_adapter {TYPE_2__* pdev; TYPE_3__ hw; } ;
struct TYPE_5__ {int dev; } ;


 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 scalar_t__ e1000_i354 ;
 scalar_t__ igb_check_reset_block (TYPE_3__*) ;
 int igb_free_desc_rings (struct igb_adapter*) ;
 int igb_loopback_cleanup (struct igb_adapter*) ;
 int igb_run_loopback_test (struct igb_adapter*) ;
 int igb_setup_desc_rings (struct igb_adapter*) ;
 int igb_setup_loopback_test (struct igb_adapter*) ;

__attribute__((used)) static int igb_loopback_test(struct igb_adapter *adapter, u64 *data)
{



 if (igb_check_reset_block(&adapter->hw)) {
  dev_err(&adapter->pdev->dev,
   "Cannot do PHY loopback test when SoL/IDER is active.\n");
  *data = 0;
  goto out;
 }

 if (adapter->hw.mac.type == e1000_i354) {
  dev_info(&adapter->pdev->dev,
   "Loopback test not supported on i354.\n");
  *data = 0;
  goto out;
 }
 *data = igb_setup_desc_rings(adapter);
 if (*data)
  goto out;
 *data = igb_setup_loopback_test(adapter);
 if (*data)
  goto err_loopback;
 *data = igb_run_loopback_test(adapter);
 igb_loopback_cleanup(adapter);

err_loopback:
 igb_free_desc_rings(adapter);
out:
 return *data;
}
