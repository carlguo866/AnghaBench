
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int media_type; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct hclgevf_dev {TYPE_2__ hw; int hw_tc_map; int num_alloc_vport; int num_rx_desc; int num_tx_desc; int num_tqps; TYPE_3__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;


 int dev_info (struct device*,char*,...) ;

__attribute__((used)) static void hclgevf_info_show(struct hclgevf_dev *hdev)
{
 struct device *dev = &hdev->pdev->dev;

 dev_info(dev, "VF info begin:\n");

 dev_info(dev, "Task queue pairs numbers: %d\n", hdev->num_tqps);
 dev_info(dev, "Desc num per TX queue: %d\n", hdev->num_tx_desc);
 dev_info(dev, "Desc num per RX queue: %d\n", hdev->num_rx_desc);
 dev_info(dev, "Numbers of vports: %d\n", hdev->num_alloc_vport);
 dev_info(dev, "HW tc map: %d\n", hdev->hw_tc_map);
 dev_info(dev, "PF media type of this VF: %d\n",
   hdev->hw.mac.media_type);

 dev_info(dev, "VF info end.\n");
}
