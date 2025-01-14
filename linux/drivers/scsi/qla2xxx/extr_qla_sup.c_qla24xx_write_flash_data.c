
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ ulong ;
typedef scalar_t__ uint32_t ;
typedef int u64 ;
struct qla_hw_data {int fdt_block_size; TYPE_1__* pdev; } ;
struct TYPE_11__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_10__ {int dev; } ;


 int GFP_KERNEL ;
 int IS_QLA25XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA27XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA28XX (struct qla_hw_data*) ;
 int IS_QLA81XX (struct qla_hw_data*) ;
 int IS_QLA83XX (struct qla_hw_data*) ;
 scalar_t__ OPTROM_BURST_DWORDS ;
 int OPTROM_BURST_SIZE ;
 int cpu_to_le32 (scalar_t__) ;
 void* dma_alloc_coherent (int *,int ,scalar_t__*,int ) ;
 int dma_free_coherent (int *,int ,void*,scalar_t__) ;
 int flash_data_addr (struct qla_hw_data*,scalar_t__) ;
 int memcpy (void*,scalar_t__*,scalar_t__) ;
 int ql_dbg (int ,TYPE_2__*,int,char*,scalar_t__,...) ;
 int ql_dbg_user ;
 scalar_t__ ql_dbg_verbose ;
 int ql_log (scalar_t__,TYPE_2__*,int,char*,...) ;
 scalar_t__ ql_log_warn ;
 int qla24xx_erase_sector (TYPE_2__*,scalar_t__) ;
 int qla24xx_protect_flash (TYPE_2__*) ;
 int qla24xx_unprotect_flash (TYPE_2__*) ;
 int qla24xx_write_flash_dword (struct qla_hw_data*,int ,int ) ;
 int qla2x00_load_ram (TYPE_2__*,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int
qla24xx_write_flash_data(scsi_qla_host_t *vha, uint32_t *dwptr, uint32_t faddr,
    uint32_t dwords)
{
 int ret;
 ulong liter;
 ulong dburst = OPTROM_BURST_DWORDS;
 uint32_t sec_mask, rest_addr, fdata;
 dma_addr_t optrom_dma;
 void *optrom = ((void*)0);
 struct qla_hw_data *ha = vha->hw;

 if (!IS_QLA25XX(ha) && !IS_QLA81XX(ha) && !IS_QLA83XX(ha) &&
     !IS_QLA27XX(ha) && !IS_QLA28XX(ha))
  goto next;


 optrom = dma_alloc_coherent(&ha->pdev->dev, OPTROM_BURST_SIZE,
     &optrom_dma, GFP_KERNEL);
 if (!optrom) {
  ql_log(ql_log_warn, vha, 0x7095,
      "Failed allocate burst (%x bytes)\n", OPTROM_BURST_SIZE);
 }

next:
 ql_log(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
     "Unprotect flash...\n");
 ret = qla24xx_unprotect_flash(vha);
 if (ret) {
  ql_log(ql_log_warn, vha, 0x7096,
      "Failed to unprotect flash.\n");
  goto done;
 }

 rest_addr = (ha->fdt_block_size >> 2) - 1;
 sec_mask = ~rest_addr;
 for (liter = 0; liter < dwords; liter++, faddr++, dwptr++) {
  fdata = (faddr & sec_mask) << 2;


  if (!(faddr & rest_addr)) {
   ql_log(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
       "Erase sector %#x...\n", faddr);

   ret = qla24xx_erase_sector(vha, fdata);
   if (ret) {
    ql_dbg(ql_dbg_user, vha, 0x7007,
        "Failed to erase sector %x.\n", faddr);
    break;
   }
  }

  if (optrom) {

   if (dwords - liter < dburst)
    dburst = dwords - liter;


   memcpy(optrom, dwptr, dburst << 2);


   ql_log(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
       "Write burst (%#lx dwords)...\n", dburst);
   ret = qla2x00_load_ram(vha, optrom_dma,
       flash_data_addr(ha, faddr), dburst);
   if (!ret) {
    liter += dburst - 1;
    faddr += dburst - 1;
    dwptr += dburst - 1;
    continue;
   }

   ql_log(ql_log_warn, vha, 0x7097,
       "Failed burst-write at %x (%p/%#llx)....\n",
       flash_data_addr(ha, faddr), optrom,
       (u64)optrom_dma);

   dma_free_coherent(&ha->pdev->dev,
       OPTROM_BURST_SIZE, optrom, optrom_dma);
   optrom = ((void*)0);
   if (IS_QLA27XX(ha) || IS_QLA28XX(ha))
    break;
   ql_log(ql_log_warn, vha, 0x7098,
       "Reverting to slow write...\n");
  }


  ret = qla24xx_write_flash_dword(ha,
      flash_data_addr(ha, faddr), cpu_to_le32(*dwptr));
  if (ret) {
   ql_dbg(ql_dbg_user, vha, 0x7006,
       "Failed slopw write %x (%x)\n", faddr, *dwptr);
   break;
  }
 }

 ql_log(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
     "Protect flash...\n");
 ret = qla24xx_protect_flash(vha);
 if (ret)
  ql_log(ql_log_warn, vha, 0x7099,
      "Failed to protect flash\n");
done:
 if (optrom)
  dma_free_coherent(&ha->pdev->dev,
      OPTROM_BURST_SIZE, optrom, optrom_dma);

 return ret;
}
