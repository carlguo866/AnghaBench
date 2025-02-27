
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int IR_BEC ;
 int IR_BEU ;
 int IR_ELO ;
 int IR_MRAF ;
 int IR_TOO ;
 int IR_WDI ;
 int netdev_err (struct net_device*,char*) ;

__attribute__((used)) static void m_can_handle_other_err(struct net_device *dev, u32 irqstatus)
{
 if (irqstatus & IR_WDI)
  netdev_err(dev, "Message RAM Watchdog event due to missing READY\n");
 if (irqstatus & IR_ELO)
  netdev_err(dev, "Error Logging Overflow\n");
 if (irqstatus & IR_BEU)
  netdev_err(dev, "Bit Error Uncorrected\n");
 if (irqstatus & IR_BEC)
  netdev_err(dev, "Bit Error Corrected\n");
 if (irqstatus & IR_TOO)
  netdev_err(dev, "Timeout reached\n");
 if (irqstatus & IR_MRAF)
  netdev_err(dev, "Message RAM access failure occurred\n");
}
