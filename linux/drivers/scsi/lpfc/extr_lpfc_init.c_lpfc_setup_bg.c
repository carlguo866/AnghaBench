
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_hba {int cfg_prot_mask; int cfg_prot_guard; } ;
struct Scsi_Host {int dummy; } ;


 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_INIT ;
 int SHOST_DIF_TYPE1_PROTECTION ;
 int SHOST_DIX_GUARD_CRC ;
 int SHOST_DIX_GUARD_IP ;
 int SHOST_DIX_TYPE0_PROTECTION ;
 int SHOST_DIX_TYPE1_PROTECTION ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int scsi_host_set_guard (struct Scsi_Host*,int) ;
 int scsi_host_set_prot (struct Scsi_Host*,int) ;

__attribute__((used)) static void
lpfc_setup_bg(struct lpfc_hba *phba, struct Scsi_Host *shost)
{
 uint32_t old_mask;
 uint32_t old_guard;

 if (phba->cfg_prot_mask && phba->cfg_prot_guard) {
  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
    "1478 Registering BlockGuard with the "
    "SCSI layer\n");

  old_mask = phba->cfg_prot_mask;
  old_guard = phba->cfg_prot_guard;


  phba->cfg_prot_mask &= (SHOST_DIF_TYPE1_PROTECTION |
   SHOST_DIX_TYPE0_PROTECTION |
   SHOST_DIX_TYPE1_PROTECTION);
  phba->cfg_prot_guard &= (SHOST_DIX_GUARD_IP |
      SHOST_DIX_GUARD_CRC);


  if (phba->cfg_prot_mask == SHOST_DIX_TYPE1_PROTECTION)
   phba->cfg_prot_mask |= SHOST_DIF_TYPE1_PROTECTION;

  if (phba->cfg_prot_mask && phba->cfg_prot_guard) {
   if ((old_mask != phba->cfg_prot_mask) ||
    (old_guard != phba->cfg_prot_guard))
    lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "1475 Registering BlockGuard with the "
     "SCSI layer: mask %d  guard %d\n",
     phba->cfg_prot_mask,
     phba->cfg_prot_guard);

   scsi_host_set_prot(shost, phba->cfg_prot_mask);
   scsi_host_set_guard(shost, phba->cfg_prot_guard);
  } else
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1479 Not Registering BlockGuard with the SCSI "
    "layer, Bad protection parameters: %d %d\n",
    old_mask, old_guard);
 }
}
