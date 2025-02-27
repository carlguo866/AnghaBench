
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct scsi_qla_host {int ddb_idx_map; } ;


 int DEBUG2 (int ) ;
 int KERN_INFO ;
 scalar_t__ MAX_DDB_ENTRIES ;
 scalar_t__ MBOX_STS_COMMAND_ERROR ;
 int QLA_ERROR ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,...) ;
 int qla4xxx_req_ddb_entry (struct scsi_qla_host*,scalar_t__,scalar_t__*) ;
 scalar_t__ test_and_set_bit (scalar_t__,int ) ;

int qla4xxx_get_ddb_index(struct scsi_qla_host *ha, uint16_t *ddb_index)
{
 uint32_t mbx_sts = 0;
 uint16_t tmp_ddb_index;
 int ret;

get_ddb_index:
 tmp_ddb_index = find_first_zero_bit(ha->ddb_idx_map, MAX_DDB_ENTRIES);

 if (tmp_ddb_index >= MAX_DDB_ENTRIES) {
  DEBUG2(ql4_printk(KERN_INFO, ha,
      "Free DDB index not available\n"));
  ret = QLA_ERROR;
  goto exit_get_ddb_index;
 }

 if (test_and_set_bit(tmp_ddb_index, ha->ddb_idx_map))
  goto get_ddb_index;

 DEBUG2(ql4_printk(KERN_INFO, ha,
     "Found a free DDB index at %d\n", tmp_ddb_index));
 ret = qla4xxx_req_ddb_entry(ha, tmp_ddb_index, &mbx_sts);
 if (ret == QLA_ERROR) {
  if (mbx_sts == MBOX_STS_COMMAND_ERROR) {
   ql4_printk(KERN_INFO, ha,
       "DDB index = %d not available trying next\n",
       tmp_ddb_index);
   goto get_ddb_index;
  }
  DEBUG2(ql4_printk(KERN_INFO, ha,
      "Free FW DDB not available\n"));
 }

 *ddb_index = tmp_ddb_index;

exit_get_ddb_index:
 return ret;
}
