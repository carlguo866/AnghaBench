
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ first_desc; scalar_t__ last_desc; int src_port; scalar_t__ hw_owned; } ;
union desc_stat {TYPE_4__ rx; int data; } ;
struct net_device {int dummy; } ;
struct ksz_desc_info {int alloc; int next; int mask; struct ksz_desc* ring; } ;
struct ksz_hw {int dev_count; TYPE_3__* port_info; struct ksz_desc_info rx_desc_info; } ;
struct ksz_desc {TYPE_2__* phw; } ;
struct dev_info {struct ksz_hw hw; } ;
struct TYPE_7__ {struct net_device* pdev; } ;
struct TYPE_5__ {int data; } ;
struct TYPE_6__ {TYPE_1__ ctrl; } ;


 int HW_TO_DEV_PORT (int ) ;
 int le32_to_cpu (int ) ;
 int netif_running (struct net_device*) ;
 int release_desc (struct ksz_desc*) ;
 scalar_t__ rx_proc (struct net_device*,struct ksz_hw*,struct ksz_desc*,union desc_stat) ;

__attribute__((used)) static int port_rcv_packets(struct dev_info *hw_priv)
{
 int next;
 union desc_stat status;
 struct ksz_hw *hw = &hw_priv->hw;
 struct net_device *dev = hw->port_info[0].pdev;
 struct ksz_desc_info *info = &hw->rx_desc_info;
 int left = info->alloc;
 struct ksz_desc *desc;
 int received = 0;

 next = info->next;
 while (left--) {

  desc = &info->ring[next];
  status.data = le32_to_cpu(desc->phw->ctrl.data);
  if (status.rx.hw_owned)
   break;

  if (hw->dev_count > 1) {

   int p = HW_TO_DEV_PORT(status.rx.src_port);

   dev = hw->port_info[p].pdev;
   if (!netif_running(dev))
    goto release_packet;
  }


  if (status.rx.last_desc && status.rx.first_desc) {
   if (rx_proc(dev, hw, desc, status))
    goto release_packet;
   received++;
  }

release_packet:
  release_desc(desc);
  next++;
  next &= info->mask;
 }
 info->next = next;

 return received;
}
