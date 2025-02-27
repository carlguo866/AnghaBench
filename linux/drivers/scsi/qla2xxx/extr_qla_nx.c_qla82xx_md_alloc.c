
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct qla_hw_data {int md_dump_size; int * md_dump; scalar_t__ md_tmplt_hdr; } ;
struct qla82xx_md_template_hdr {int capture_debug_level; scalar_t__* capture_size_array; } ;
struct TYPE_4__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int QLA82XX_DEFAULT_CAP_MASK ;
 int ql2xmdcapmask ;
 int ql_log (int ,TYPE_1__*,int,char*,...) ;
 int ql_log_info ;
 int ql_log_warn ;
 int * vmalloc (int) ;

int
qla82xx_md_alloc(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;
 int i, k;
 struct qla82xx_md_template_hdr *tmplt_hdr;

 tmplt_hdr = (struct qla82xx_md_template_hdr *)ha->md_tmplt_hdr;

 if (ql2xmdcapmask < 0x3 || ql2xmdcapmask > 0x7F) {
  ql2xmdcapmask = tmplt_hdr->capture_debug_level & 0xFF;
  ql_log(ql_log_info, vha, 0xb045,
      "Forcing driver capture mask to firmware default capture mask: 0x%x.\n",
      ql2xmdcapmask);
 }

 for (i = 0x2, k = 1; (i & QLA82XX_DEFAULT_CAP_MASK); i <<= 1, k++) {
  if (i & ql2xmdcapmask)
   ha->md_dump_size += tmplt_hdr->capture_size_array[k];
 }

 if (ha->md_dump) {
  ql_log(ql_log_warn, vha, 0xb046,
      "Firmware dump previously allocated.\n");
  return 1;
 }

 ha->md_dump = vmalloc(ha->md_dump_size);
 if (ha->md_dump == ((void*)0)) {
  ql_log(ql_log_warn, vha, 0xb047,
      "Unable to allocate memory for Minidump size "
      "(0x%x).\n", ha->md_dump_size);
  return 1;
 }
 return 0;
}
