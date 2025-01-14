
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int max_rpi; int rpi_base; int max_vpi; int vpi_base; int max_xri; int xri_base; int max_vfi; int vfi_base; scalar_t__ xri_used; } ;
struct TYPE_4__ {int next_rpi; int* rpi_bmask; int* rpi_ids; int* xri_bmask; int* xri_ids; int* vfi_bmask; int* vfi_ids; int sli4_flags; TYPE_1__ max_cfg_param; scalar_t__ extents_in_use; int rpi_hdrs_in_use; } ;
struct lpfc_hba {int* vpi_bmask; int* vpi_ids; TYPE_2__ sli4_hba; } ;


 int BITS_PER_LONG ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_INIT ;
 int LOG_MBOX ;
 int LOG_SLI ;
 scalar_t__ LPFC_IDX_RSRC_RDY ;
 int LPFC_RSC_TYPE_FCOE_RPI ;
 int LPFC_RSC_TYPE_FCOE_VFI ;
 int LPFC_RSC_TYPE_FCOE_VPI ;
 int LPFC_RSC_TYPE_FCOE_XRI ;
 scalar_t__ bf_get (int ,int *) ;
 int bf_set (int ,int *,scalar_t__) ;
 void* kcalloc (int,int,int ) ;
 int kfree (int*) ;
 int lpfc_idx_rsrc_rdy ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,...) ;
 int lpfc_sli4_alloc_extent (struct lpfc_hba*,int ) ;
 int lpfc_sli4_chk_avail_extnt_rsrc (struct lpfc_hba*,int ) ;
 int lpfc_sli4_dealloc_extent (struct lpfc_hba*,int ) ;
 int lpfc_sli4_dealloc_resource_identifiers (struct lpfc_hba*) ;
 int lpfc_sli4_remove_rpis (struct lpfc_hba*) ;
 scalar_t__ unlikely (int) ;

int
lpfc_sli4_alloc_resource_identifiers(struct lpfc_hba *phba)
{
 int i, rc, error = 0;
 uint16_t count, base;
 unsigned long longs;

 if (!phba->sli4_hba.rpi_hdrs_in_use)
  phba->sli4_hba.next_rpi = phba->sli4_hba.max_cfg_param.max_rpi;
 if (phba->sli4_hba.extents_in_use) {





  if (bf_get(lpfc_idx_rsrc_rdy, &phba->sli4_hba.sli4_flags) ==
      LPFC_IDX_RSRC_RDY) {





   rc = lpfc_sli4_chk_avail_extnt_rsrc(phba,
       LPFC_RSC_TYPE_FCOE_VFI);
   if (rc != 0)
    error++;
   rc = lpfc_sli4_chk_avail_extnt_rsrc(phba,
       LPFC_RSC_TYPE_FCOE_VPI);
   if (rc != 0)
    error++;
   rc = lpfc_sli4_chk_avail_extnt_rsrc(phba,
       LPFC_RSC_TYPE_FCOE_XRI);
   if (rc != 0)
    error++;
   rc = lpfc_sli4_chk_avail_extnt_rsrc(phba,
       LPFC_RSC_TYPE_FCOE_RPI);
   if (rc != 0)
    error++;







   if (error) {
    lpfc_printf_log(phba, KERN_INFO,
      LOG_MBOX | LOG_INIT,
      "2931 Detected extent resource "
      "change.  Reallocating all "
      "extents.\n");
    rc = lpfc_sli4_dealloc_extent(phba,
       LPFC_RSC_TYPE_FCOE_VFI);
    rc = lpfc_sli4_dealloc_extent(phba,
       LPFC_RSC_TYPE_FCOE_VPI);
    rc = lpfc_sli4_dealloc_extent(phba,
       LPFC_RSC_TYPE_FCOE_XRI);
    rc = lpfc_sli4_dealloc_extent(phba,
       LPFC_RSC_TYPE_FCOE_RPI);
   } else
    return 0;
  }

  rc = lpfc_sli4_alloc_extent(phba, LPFC_RSC_TYPE_FCOE_VFI);
  if (unlikely(rc))
   goto err_exit;

  rc = lpfc_sli4_alloc_extent(phba, LPFC_RSC_TYPE_FCOE_VPI);
  if (unlikely(rc))
   goto err_exit;

  rc = lpfc_sli4_alloc_extent(phba, LPFC_RSC_TYPE_FCOE_RPI);
  if (unlikely(rc))
   goto err_exit;

  rc = lpfc_sli4_alloc_extent(phba, LPFC_RSC_TYPE_FCOE_XRI);
  if (unlikely(rc))
   goto err_exit;
  bf_set(lpfc_idx_rsrc_rdy, &phba->sli4_hba.sli4_flags,
         LPFC_IDX_RSRC_RDY);
  return rc;
 } else {







  if (bf_get(lpfc_idx_rsrc_rdy, &phba->sli4_hba.sli4_flags) ==
      LPFC_IDX_RSRC_RDY) {
   lpfc_sli4_dealloc_resource_identifiers(phba);
   lpfc_sli4_remove_rpis(phba);
  }

  count = phba->sli4_hba.max_cfg_param.max_rpi;
  if (count <= 0) {
   lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
     "3279 Invalid provisioning of "
     "rpi:%d\n", count);
   rc = -EINVAL;
   goto err_exit;
  }
  base = phba->sli4_hba.max_cfg_param.rpi_base;
  longs = (count + BITS_PER_LONG - 1) / BITS_PER_LONG;
  phba->sli4_hba.rpi_bmask = kcalloc(longs,
         sizeof(unsigned long),
         GFP_KERNEL);
  if (unlikely(!phba->sli4_hba.rpi_bmask)) {
   rc = -ENOMEM;
   goto err_exit;
  }
  phba->sli4_hba.rpi_ids = kcalloc(count, sizeof(uint16_t),
       GFP_KERNEL);
  if (unlikely(!phba->sli4_hba.rpi_ids)) {
   rc = -ENOMEM;
   goto free_rpi_bmask;
  }

  for (i = 0; i < count; i++)
   phba->sli4_hba.rpi_ids[i] = base + i;


  count = phba->sli4_hba.max_cfg_param.max_vpi;
  if (count <= 0) {
   lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
     "3280 Invalid provisioning of "
     "vpi:%d\n", count);
   rc = -EINVAL;
   goto free_rpi_ids;
  }
  base = phba->sli4_hba.max_cfg_param.vpi_base;
  longs = (count + BITS_PER_LONG - 1) / BITS_PER_LONG;
  phba->vpi_bmask = kcalloc(longs, sizeof(unsigned long),
       GFP_KERNEL);
  if (unlikely(!phba->vpi_bmask)) {
   rc = -ENOMEM;
   goto free_rpi_ids;
  }
  phba->vpi_ids = kcalloc(count, sizeof(uint16_t),
     GFP_KERNEL);
  if (unlikely(!phba->vpi_ids)) {
   rc = -ENOMEM;
   goto free_vpi_bmask;
  }

  for (i = 0; i < count; i++)
   phba->vpi_ids[i] = base + i;


  count = phba->sli4_hba.max_cfg_param.max_xri;
  if (count <= 0) {
   lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
     "3281 Invalid provisioning of "
     "xri:%d\n", count);
   rc = -EINVAL;
   goto free_vpi_ids;
  }
  base = phba->sli4_hba.max_cfg_param.xri_base;
  longs = (count + BITS_PER_LONG - 1) / BITS_PER_LONG;
  phba->sli4_hba.xri_bmask = kcalloc(longs,
         sizeof(unsigned long),
         GFP_KERNEL);
  if (unlikely(!phba->sli4_hba.xri_bmask)) {
   rc = -ENOMEM;
   goto free_vpi_ids;
  }
  phba->sli4_hba.max_cfg_param.xri_used = 0;
  phba->sli4_hba.xri_ids = kcalloc(count, sizeof(uint16_t),
       GFP_KERNEL);
  if (unlikely(!phba->sli4_hba.xri_ids)) {
   rc = -ENOMEM;
   goto free_xri_bmask;
  }

  for (i = 0; i < count; i++)
   phba->sli4_hba.xri_ids[i] = base + i;


  count = phba->sli4_hba.max_cfg_param.max_vfi;
  if (count <= 0) {
   lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
     "3282 Invalid provisioning of "
     "vfi:%d\n", count);
   rc = -EINVAL;
   goto free_xri_ids;
  }
  base = phba->sli4_hba.max_cfg_param.vfi_base;
  longs = (count + BITS_PER_LONG - 1) / BITS_PER_LONG;
  phba->sli4_hba.vfi_bmask = kcalloc(longs,
         sizeof(unsigned long),
         GFP_KERNEL);
  if (unlikely(!phba->sli4_hba.vfi_bmask)) {
   rc = -ENOMEM;
   goto free_xri_ids;
  }
  phba->sli4_hba.vfi_ids = kcalloc(count, sizeof(uint16_t),
       GFP_KERNEL);
  if (unlikely(!phba->sli4_hba.vfi_ids)) {
   rc = -ENOMEM;
   goto free_vfi_bmask;
  }

  for (i = 0; i < count; i++)
   phba->sli4_hba.vfi_ids[i] = base + i;





  bf_set(lpfc_idx_rsrc_rdy, &phba->sli4_hba.sli4_flags,
         LPFC_IDX_RSRC_RDY);
  return 0;
 }

 free_vfi_bmask:
 kfree(phba->sli4_hba.vfi_bmask);
 phba->sli4_hba.vfi_bmask = ((void*)0);
 free_xri_ids:
 kfree(phba->sli4_hba.xri_ids);
 phba->sli4_hba.xri_ids = ((void*)0);
 free_xri_bmask:
 kfree(phba->sli4_hba.xri_bmask);
 phba->sli4_hba.xri_bmask = ((void*)0);
 free_vpi_ids:
 kfree(phba->vpi_ids);
 phba->vpi_ids = ((void*)0);
 free_vpi_bmask:
 kfree(phba->vpi_bmask);
 phba->vpi_bmask = ((void*)0);
 free_rpi_ids:
 kfree(phba->sli4_hba.rpi_ids);
 phba->sli4_hba.rpi_ids = ((void*)0);
 free_rpi_bmask:
 kfree(phba->sli4_hba.rpi_bmask);
 phba->sli4_hba.rpi_bmask = ((void*)0);
 err_exit:
 return rc;
}
