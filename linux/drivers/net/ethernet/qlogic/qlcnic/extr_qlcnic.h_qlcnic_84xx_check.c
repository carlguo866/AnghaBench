
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {unsigned short device; } ;


 unsigned short PCI_DEVICE_ID_QLOGIC_QLE844X ;
 unsigned short PCI_DEVICE_ID_QLOGIC_VF_QLE844X ;

__attribute__((used)) static inline bool qlcnic_84xx_check(struct qlcnic_adapter *adapter)
{
 unsigned short device = adapter->pdev->device;

 return ((device == PCI_DEVICE_ID_QLOGIC_QLE844X) ||
  (device == PCI_DEVICE_ID_QLOGIC_VF_QLE844X)) ? 1 : 0;
}
