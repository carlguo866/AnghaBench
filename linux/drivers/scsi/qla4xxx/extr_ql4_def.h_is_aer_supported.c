
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_QLOGIC_ISP8022 ;
 scalar_t__ PCI_DEVICE_ID_QLOGIC_ISP8042 ;
 scalar_t__ PCI_DEVICE_ID_QLOGIC_ISP8324 ;

__attribute__((used)) static inline int is_aer_supported(struct scsi_qla_host *ha)
{
 return ((ha->pdev->device == PCI_DEVICE_ID_QLOGIC_ISP8022) ||
  (ha->pdev->device == PCI_DEVICE_ID_QLOGIC_ISP8324) ||
  (ha->pdev->device == PCI_DEVICE_ID_QLOGIC_ISP8042));
}
