
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int flt_chap_size; int flt_region_chap; } ;
struct scsi_qla_host {int port_num; int chap_dma_pool; int chap_sem; scalar_t__ chap_list; TYPE_1__ hw; } ;
struct ql4_chap_table {int cookie; } ;
struct Scsi_Host {int dummy; } ;
typedef int dma_addr_t ;


 int CHAP_VALID_COOKIE ;
 int DEBUG2 (int ) ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int FLASH_CHAP_OFFSET ;
 int FLASH_OPT_RMW_COMMIT ;
 int FLASH_RAW_ACCESS_ADDR ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int MAX_CHAP_ENTRIES_40XX ;
 int QLA_SUCCESS ;
 int __constant_cpu_to_le16 (int) ;
 int __le16_to_cpu (int ) ;
 int dma_pool_free (int ,struct ql4_chap_table*,int ) ;
 struct ql4_chap_table* dma_pool_zalloc (int ,int ,int *) ;
 scalar_t__ is_qla40XX (struct scsi_qla_host*) ;
 scalar_t__ is_qla80XX (struct scsi_qla_host*) ;
 int memcpy (struct ql4_chap_table*,struct ql4_chap_table*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,...) ;
 int qla4xxx_get_flash (struct scsi_qla_host*,int ,int,int) ;
 int qla4xxx_is_chap_active (struct Scsi_Host*,int) ;
 int qla4xxx_set_flash (struct scsi_qla_host*,int ,int,int,int ) ;
 struct scsi_qla_host* to_qla_host (struct Scsi_Host*) ;

__attribute__((used)) static int qla4xxx_delete_chap(struct Scsi_Host *shost, uint16_t chap_tbl_idx)
{
 struct scsi_qla_host *ha = to_qla_host(shost);
 struct ql4_chap_table *chap_table;
 dma_addr_t chap_dma;
 int max_chap_entries = 0;
 uint32_t offset = 0;
 uint32_t chap_size;
 int ret = 0;

 chap_table = dma_pool_zalloc(ha->chap_dma_pool, GFP_KERNEL, &chap_dma);
 if (chap_table == ((void*)0))
  return -ENOMEM;

 if (is_qla80XX(ha))
  max_chap_entries = (ha->hw.flt_chap_size / 2) /
       sizeof(struct ql4_chap_table);
 else
  max_chap_entries = MAX_CHAP_ENTRIES_40XX;

 if (chap_tbl_idx > max_chap_entries) {
  ret = -EINVAL;
  goto exit_delete_chap;
 }



 ret = qla4xxx_is_chap_active(shost, chap_tbl_idx);
 if (ret) {
  ql4_printk(KERN_INFO, ha, "CHAP entry %d is in use, cannot "
      "delete from flash\n", chap_tbl_idx);
  ret = -EBUSY;
  goto exit_delete_chap;
 }

 chap_size = sizeof(struct ql4_chap_table);
 if (is_qla40XX(ha))
  offset = FLASH_CHAP_OFFSET | (chap_tbl_idx * chap_size);
 else {
  offset = FLASH_RAW_ACCESS_ADDR + (ha->hw.flt_region_chap << 2);



  if (ha->port_num == 1)
   offset += (ha->hw.flt_chap_size / 2);
  offset += (chap_tbl_idx * chap_size);
 }

 ret = qla4xxx_get_flash(ha, chap_dma, offset, chap_size);
 if (ret != QLA_SUCCESS) {
  ret = -EINVAL;
  goto exit_delete_chap;
 }

 DEBUG2(ql4_printk(KERN_INFO, ha, "Chap Cookie: x%x\n",
     __le16_to_cpu(chap_table->cookie)));

 if (__le16_to_cpu(chap_table->cookie) != CHAP_VALID_COOKIE) {
  ql4_printk(KERN_ERR, ha, "No valid chap entry found\n");
  goto exit_delete_chap;
 }

 chap_table->cookie = __constant_cpu_to_le16(0xFFFF);

 offset = FLASH_CHAP_OFFSET |
   (chap_tbl_idx * sizeof(struct ql4_chap_table));
 ret = qla4xxx_set_flash(ha, chap_dma, offset, chap_size,
    FLASH_OPT_RMW_COMMIT);
 if (ret == QLA_SUCCESS && ha->chap_list) {
  mutex_lock(&ha->chap_sem);

  memcpy((struct ql4_chap_table *)ha->chap_list + chap_tbl_idx,
   chap_table, sizeof(struct ql4_chap_table));
  mutex_unlock(&ha->chap_sem);
 }
 if (ret != QLA_SUCCESS)
  ret = -EINVAL;

exit_delete_chap:
 dma_pool_free(ha->chap_dma_pool, chap_table, chap_dma);
 return ret;
}
