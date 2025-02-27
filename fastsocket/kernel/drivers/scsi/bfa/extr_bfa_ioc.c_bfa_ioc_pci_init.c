
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_pcidev_s {int device_id; int ssid; } ;
struct bfa_ioc_s {int clscode; scalar_t__ asic_gen; void* ad_cap_bm; void* port_mode_cfg; void* port_mode; void* asic_mode; void* port1_mode; void* port0_mode; void* fcmode; struct bfa_pcidev_s pcidev; } ;
typedef enum bfi_pcifn_class { ____Placeholder_bfi_pcifn_class } bfi_pcifn_class ;


 void* BFA_CM_CNA ;
 void* BFA_CM_HBA ;
 void* BFA_CM_NIC ;
 void* BFA_MODE_CNA ;
 void* BFA_MODE_HBA ;
 void* BFA_MODE_NIC ;
 int BFA_PCI_CT2_SSID_FC ;
 int BFA_PCI_CT2_SSID_FCoE ;






 void* BFA_TRUE ;
 scalar_t__ BFI_ASIC_GEN_CB ;
 scalar_t__ BFI_ASIC_GEN_CT ;
 scalar_t__ BFI_ASIC_GEN_CT2 ;
 void* BFI_ASIC_MODE_ETH ;
 void* BFI_ASIC_MODE_FC ;
 void* BFI_ASIC_MODE_FC16 ;
 int BFI_PCIFN_CLASS_FC ;
 void* BFI_PORT_MODE_ETH ;
 void* BFI_PORT_MODE_FC ;
 int WARN_ON (int) ;
 int bfa_ioc_ct2_poweron (struct bfa_ioc_s*) ;
 int bfa_ioc_map_port (struct bfa_ioc_s*) ;
 int bfa_ioc_reg_init (struct bfa_ioc_s*) ;
 int bfa_ioc_set_cb_hwif (struct bfa_ioc_s*) ;
 int bfa_ioc_set_ct2_hwif (struct bfa_ioc_s*) ;
 int bfa_ioc_set_ct_hwif (struct bfa_ioc_s*) ;

void
bfa_ioc_pci_init(struct bfa_ioc_s *ioc, struct bfa_pcidev_s *pcidev,
  enum bfi_pcifn_class clscode)
{
 ioc->clscode = clscode;
 ioc->pcidev = *pcidev;




 ioc->port0_mode = ioc->port1_mode = BFI_PORT_MODE_FC;
 ioc->asic_mode = BFI_ASIC_MODE_FC;

 switch (pcidev->device_id) {
 case 129:
 case 128:
  ioc->asic_gen = BFI_ASIC_GEN_CB;
  ioc->fcmode = BFA_TRUE;
  ioc->port_mode = ioc->port_mode_cfg = BFA_MODE_HBA;
  ioc->ad_cap_bm = BFA_CM_HBA;
  break;

 case 133:
  ioc->asic_gen = BFI_ASIC_GEN_CT;
  ioc->port0_mode = ioc->port1_mode = BFI_PORT_MODE_ETH;
  ioc->asic_mode = BFI_ASIC_MODE_ETH;
  ioc->port_mode = ioc->port_mode_cfg = BFA_MODE_CNA;
  ioc->ad_cap_bm = BFA_CM_CNA;
  break;

 case 130:
  ioc->asic_gen = BFI_ASIC_GEN_CT;
  ioc->fcmode = BFA_TRUE;
  ioc->port_mode = ioc->port_mode_cfg = BFA_MODE_HBA;
  ioc->ad_cap_bm = BFA_CM_HBA;
  break;

 case 132:
 case 131:
  ioc->asic_gen = BFI_ASIC_GEN_CT2;
  if (clscode == BFI_PCIFN_CLASS_FC &&
      pcidev->ssid == BFA_PCI_CT2_SSID_FC) {
   ioc->asic_mode = BFI_ASIC_MODE_FC16;
   ioc->fcmode = BFA_TRUE;
   ioc->port_mode = ioc->port_mode_cfg = BFA_MODE_HBA;
   ioc->ad_cap_bm = BFA_CM_HBA;
  } else {
   ioc->port0_mode = ioc->port1_mode = BFI_PORT_MODE_ETH;
   ioc->asic_mode = BFI_ASIC_MODE_ETH;
   if (pcidev->ssid == BFA_PCI_CT2_SSID_FCoE) {
    ioc->port_mode =
    ioc->port_mode_cfg = BFA_MODE_CNA;
    ioc->ad_cap_bm = BFA_CM_CNA;
   } else {
    ioc->port_mode =
    ioc->port_mode_cfg = BFA_MODE_NIC;
    ioc->ad_cap_bm = BFA_CM_NIC;
   }
  }
  break;

 default:
  WARN_ON(1);
 }




 if (ioc->asic_gen == BFI_ASIC_GEN_CB)
  bfa_ioc_set_cb_hwif(ioc);
 else if (ioc->asic_gen == BFI_ASIC_GEN_CT)
  bfa_ioc_set_ct_hwif(ioc);
 else {
  WARN_ON(ioc->asic_gen != BFI_ASIC_GEN_CT2);
  bfa_ioc_set_ct2_hwif(ioc);
  bfa_ioc_ct2_poweron(ioc);
 }

 bfa_ioc_map_port(ioc);
 bfa_ioc_reg_init(ioc);
}
