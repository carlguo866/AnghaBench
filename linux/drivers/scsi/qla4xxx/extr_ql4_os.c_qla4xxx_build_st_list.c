
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct scsi_qla_host {int fw_ddb_dma_pool; } ;
struct qla_ddb_index {int flash_ddb_idx; int fw_ddb_idx; int list; } ;
struct list_head {int dummy; } ;
struct dev_db_entry {scalar_t__ iscsi_name; } ;
typedef int dma_addr_t ;


 int DDB_DS_UNASSIGNED ;
 int DEBUG2 (int ) ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int MAX_DEV_DB_ENTRIES ;
 int MAX_DEV_DB_ENTRIES_40XX ;
 int QLA_ERROR ;
 struct dev_db_entry* dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_free (int ,struct dev_db_entry*,int ) ;
 scalar_t__ is_qla40XX (struct scsi_qla_host*) ;
 int list_add_tail (int *,struct list_head*) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,...) ;
 int qla4xxx_find_flash_st_idx (struct scsi_qla_host*,struct dev_db_entry*,int,int*) ;
 int qla4xxx_get_fwddb_entry (struct scsi_qla_host*,int,struct dev_db_entry*,int ,int *,int*,int*,int*,int *,int *) ;
 scalar_t__ strlen (char*) ;
 struct qla_ddb_index* vzalloc (int) ;

__attribute__((used)) static void qla4xxx_build_st_list(struct scsi_qla_host *ha,
      struct list_head *list_st)
{
 struct qla_ddb_index *st_ddb_idx;
 int max_ddbs;
 int fw_idx_size;
 struct dev_db_entry *fw_ddb_entry;
 dma_addr_t fw_ddb_dma;
 int ret;
 uint32_t idx = 0, next_idx = 0;
 uint32_t state = 0, conn_err = 0;
 uint32_t flash_index = -1;
 uint16_t conn_id = 0;

 fw_ddb_entry = dma_pool_alloc(ha->fw_ddb_dma_pool, GFP_KERNEL,
          &fw_ddb_dma);
 if (fw_ddb_entry == ((void*)0)) {
  DEBUG2(ql4_printk(KERN_ERR, ha, "Out of memory\n"));
  goto exit_st_list;
 }

 max_ddbs = is_qla40XX(ha) ? MAX_DEV_DB_ENTRIES_40XX :
         MAX_DEV_DB_ENTRIES;
 fw_idx_size = sizeof(struct qla_ddb_index);

 for (idx = 0; idx < max_ddbs; idx = next_idx) {
  ret = qla4xxx_get_fwddb_entry(ha, idx, fw_ddb_entry, fw_ddb_dma,
           ((void*)0), &next_idx, &state,
           &conn_err, ((void*)0), &conn_id);
  if (ret == QLA_ERROR)
   break;


  if (state == DDB_DS_UNASSIGNED)
   goto continue_next_st;


  if (strlen((char *) fw_ddb_entry->iscsi_name) != 0)
   goto continue_next_st;

  st_ddb_idx = vzalloc(fw_idx_size);
  if (!st_ddb_idx)
   break;

  ret = qla4xxx_find_flash_st_idx(ha, fw_ddb_entry, idx,
      &flash_index);
  if (ret == QLA_ERROR) {
   ql4_printk(KERN_ERR, ha,
       "No flash entry for ST at idx [%d]\n", idx);
   st_ddb_idx->flash_ddb_idx = idx;
  } else {
   ql4_printk(KERN_INFO, ha,
       "ST at idx [%d] is stored at flash [%d]\n",
       idx, flash_index);
   st_ddb_idx->flash_ddb_idx = flash_index;
  }

  st_ddb_idx->fw_ddb_idx = idx;

  list_add_tail(&st_ddb_idx->list, list_st);
continue_next_st:
  if (next_idx == 0)
   break;
 }

exit_st_list:
 if (fw_ddb_entry)
  dma_pool_free(ha->fw_ddb_dma_pool, fw_ddb_entry, fw_ddb_dma);
}
