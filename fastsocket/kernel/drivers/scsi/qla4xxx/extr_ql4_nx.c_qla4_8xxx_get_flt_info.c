
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct ql82xx_hw_data {int flt_region_flt; int flt_region_fdt; int flt_region_boot; int flt_region_fw; int flt_region_bootload; int flt_iscsi_param; int flt_region_chap; int flt_chap_size; int flt_region_ddb; int flt_ddb_size; } ;
struct scsi_qla_host {scalar_t__ request_ring; struct ql82xx_hw_data hw; } ;
struct qla_flt_region {int size; int code; int end; int start; } ;
struct qla_flt_header {scalar_t__ version; scalar_t__ length; scalar_t__ checksum; } ;


 int DEBUG2 (int ) ;
 int DEBUG3 (int ) ;
 int FA_BOOT_CODE_ADDR_82 ;
 int FA_BOOT_LOAD_ADDR_82 ;
 int FA_FLASH_CHAP_SIZE ;
 int FA_FLASH_DDB_SIZE ;
 int FA_FLASH_DESCR_ADDR_82 ;
 int FA_FLASH_ISCSI_CHAP ;
 int FA_FLASH_ISCSI_DDB ;
 int FA_RISC_CODE_ADDR_82 ;
 int KERN_DEBUG ;
 int KERN_INFO ;
 int OPTROM_BURST_SIZE ;
 int QLA_SUCCESS ;
 scalar_t__ __constant_cpu_to_le16 (int) ;
 scalar_t__ is_qla8022 (struct scsi_qla_host*) ;
 scalar_t__ is_qla8032 (struct scsi_qla_host*) ;
 int le16_to_cpu (scalar_t__) ;
 int le32_to_cpu (int ) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,...) ;
 int qla4_82xx_read_optrom_data (struct scsi_qla_host*,int *,int,int ) ;
 int qla4_83xx_flash_read_u32 (struct scsi_qla_host*,int,int *,int) ;

__attribute__((used)) static void
qla4_8xxx_get_flt_info(struct scsi_qla_host *ha, uint32_t flt_addr)
{
 const char *loc, *locations[] = { "DEF", "FLT" };
 uint16_t *wptr;
 uint16_t cnt, chksum;
 uint32_t start, status;
 struct qla_flt_header *flt;
 struct qla_flt_region *region;
 struct ql82xx_hw_data *hw = &ha->hw;

 hw->flt_region_flt = flt_addr;
 wptr = (uint16_t *)ha->request_ring;
 flt = (struct qla_flt_header *)ha->request_ring;
 region = (struct qla_flt_region *)&flt[1];

 if (is_qla8022(ha)) {
  qla4_82xx_read_optrom_data(ha, (uint8_t *)ha->request_ring,
        flt_addr << 2, OPTROM_BURST_SIZE);
 } else if (is_qla8032(ha)) {
  status = qla4_83xx_flash_read_u32(ha, flt_addr << 2,
        (uint8_t *)ha->request_ring,
        0x400);
  if (status != QLA_SUCCESS)
   goto no_flash_data;
 }

 if (*wptr == __constant_cpu_to_le16(0xffff))
  goto no_flash_data;
 if (flt->version != __constant_cpu_to_le16(1)) {
  DEBUG2(ql4_printk(KERN_INFO, ha, "Unsupported FLT detected: "
   "version=0x%x length=0x%x checksum=0x%x.\n",
   le16_to_cpu(flt->version), le16_to_cpu(flt->length),
   le16_to_cpu(flt->checksum)));
  goto no_flash_data;
 }

 cnt = (sizeof(struct qla_flt_header) + le16_to_cpu(flt->length)) >> 1;
 for (chksum = 0; cnt; cnt--)
  chksum += le16_to_cpu(*wptr++);
 if (chksum) {
  DEBUG2(ql4_printk(KERN_INFO, ha, "Inconsistent FLT detected: "
   "version=0x%x length=0x%x checksum=0x%x.\n",
   le16_to_cpu(flt->version), le16_to_cpu(flt->length),
   chksum));
  goto no_flash_data;
 }

 loc = locations[1];
 cnt = le16_to_cpu(flt->length) / sizeof(struct qla_flt_region);
 for ( ; cnt; cnt--, region++) {

  start = le32_to_cpu(region->start) >> 2;

  DEBUG3(ql4_printk(KERN_DEBUG, ha, "FLT[%02x]: start=0x%x "
      "end=0x%x size=0x%x.\n", le32_to_cpu(region->code), start,
      le32_to_cpu(region->end) >> 2, le32_to_cpu(region->size)));

  switch (le32_to_cpu(region->code) & 0xff) {
  case 133:
   hw->flt_region_fdt = start;
   break;
  case 134:
   hw->flt_region_boot = start;
   break;
  case 132:
  case 131:
   hw->flt_region_fw = start;
   break;
  case 135:
   hw->flt_region_bootload = start;
   break;
  case 128:
   hw->flt_iscsi_param = start;
   break;
  case 130:
   hw->flt_region_chap = start;
   hw->flt_chap_size = le32_to_cpu(region->size);
   break;
  case 129:
   hw->flt_region_ddb = start;
   hw->flt_ddb_size = le32_to_cpu(region->size);
   break;
  }
 }
 goto done;

no_flash_data:

 loc = locations[0];

 hw->flt_region_fdt = FA_FLASH_DESCR_ADDR_82;
 hw->flt_region_boot = FA_BOOT_CODE_ADDR_82;
 hw->flt_region_bootload = FA_BOOT_LOAD_ADDR_82;
 hw->flt_region_fw = FA_RISC_CODE_ADDR_82;
 hw->flt_region_chap = FA_FLASH_ISCSI_CHAP >> 2;
 hw->flt_chap_size = FA_FLASH_CHAP_SIZE;
 hw->flt_region_ddb = FA_FLASH_ISCSI_DDB >> 2;
 hw->flt_ddb_size = FA_FLASH_DDB_SIZE;

done:
 DEBUG2(ql4_printk(KERN_INFO, ha,
     "FLT[%s]: flt=0x%x fdt=0x%x boot=0x%x bootload=0x%x fw=0x%x chap=0x%x chap_size=0x%x ddb=0x%x  ddb_size=0x%x\n",
     loc, hw->flt_region_flt, hw->flt_region_fdt,
     hw->flt_region_boot, hw->flt_region_bootload,
     hw->flt_region_fw, hw->flt_region_chap,
     hw->flt_chap_size, hw->flt_region_ddb,
     hw->flt_ddb_size));
}
