
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short PCI_DEVICE_ID_BMID ;
 unsigned short PCI_DEVICE_ID_BSMB ;
 unsigned short PCI_DEVICE_ID_LP101 ;
 unsigned short PCI_DEVICE_ID_PFLY ;
 unsigned short PCI_DEVICE_ID_RFLY ;
 unsigned short PCI_DEVICE_ID_SAT_MID ;
 unsigned short PCI_DEVICE_ID_SAT_SMB ;
 unsigned short PCI_DEVICE_ID_TFLY ;
 unsigned short PCI_DEVICE_ID_ZMID ;
 unsigned short PCI_DEVICE_ID_ZSMB ;

__attribute__((used)) static inline int
lpfc_is_LC_HBA(unsigned short device)
{
 if ((device == PCI_DEVICE_ID_TFLY) ||
     (device == PCI_DEVICE_ID_PFLY) ||
     (device == PCI_DEVICE_ID_LP101) ||
     (device == PCI_DEVICE_ID_BMID) ||
     (device == PCI_DEVICE_ID_BSMB) ||
     (device == PCI_DEVICE_ID_ZMID) ||
     (device == PCI_DEVICE_ID_ZSMB) ||
     (device == PCI_DEVICE_ID_SAT_MID) ||
     (device == PCI_DEVICE_ID_SAT_SMB) ||
     (device == PCI_DEVICE_ID_RFLY))
  return 1;
 else
  return 0;
}
