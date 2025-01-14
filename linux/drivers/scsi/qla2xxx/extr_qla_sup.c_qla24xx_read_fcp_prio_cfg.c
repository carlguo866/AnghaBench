
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_16__ {int fcp_prio_enabled; } ;
struct qla_hw_data {int flt_region_fcp_prio; TYPE_4__* fcp_prio_cfg; TYPE_2__ flags; TYPE_1__* isp_ops; } ;
struct TYPE_17__ {struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_18__ {int num_entries; struct TYPE_18__* entry; } ;
struct TYPE_15__ {int (* read_optrom ) (TYPE_3__*,TYPE_4__*,int,int) ;} ;


 int FCP_PRIO_CFG_ENTRY_SIZE ;
 int FCP_PRIO_CFG_HDR_SIZE ;
 int FCP_PRIO_CFG_SIZE ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int memset (TYPE_4__*,int ,int) ;
 int ql_log (int ,TYPE_3__*,int,char*,int) ;
 int ql_log_warn ;
 int qla24xx_fcp_prio_cfg_valid (TYPE_3__*,TYPE_4__*,int) ;
 int stub1 (TYPE_3__*,TYPE_4__*,int,int) ;
 int stub2 (TYPE_3__*,TYPE_4__*,int,int) ;
 int vfree (TYPE_4__*) ;
 TYPE_4__* vmalloc (int) ;

int
qla24xx_read_fcp_prio_cfg(scsi_qla_host_t *vha)
{
 int len, max_len;
 uint32_t fcp_prio_addr;
 struct qla_hw_data *ha = vha->hw;

 if (!ha->fcp_prio_cfg) {
  ha->fcp_prio_cfg = vmalloc(FCP_PRIO_CFG_SIZE);
  if (!ha->fcp_prio_cfg) {
   ql_log(ql_log_warn, vha, 0x00d5,
       "Unable to allocate memory for fcp priority data (%x).\n",
       FCP_PRIO_CFG_SIZE);
   return QLA_FUNCTION_FAILED;
  }
 }
 memset(ha->fcp_prio_cfg, 0, FCP_PRIO_CFG_SIZE);

 fcp_prio_addr = ha->flt_region_fcp_prio;


 ha->isp_ops->read_optrom(vha, ha->fcp_prio_cfg,
   fcp_prio_addr << 2, FCP_PRIO_CFG_HDR_SIZE);

 if (!qla24xx_fcp_prio_cfg_valid(vha, ha->fcp_prio_cfg, 0))
  goto fail;


 fcp_prio_addr += (FCP_PRIO_CFG_HDR_SIZE >> 2);
 len = ha->fcp_prio_cfg->num_entries * FCP_PRIO_CFG_ENTRY_SIZE;
 max_len = FCP_PRIO_CFG_SIZE - FCP_PRIO_CFG_HDR_SIZE;

 ha->isp_ops->read_optrom(vha, &ha->fcp_prio_cfg->entry[0],
   fcp_prio_addr << 2, (len < max_len ? len : max_len));


 if (!qla24xx_fcp_prio_cfg_valid(vha, ha->fcp_prio_cfg, 1))
  goto fail;

 ha->flags.fcp_prio_enabled = 1;
 return QLA_SUCCESS;
fail:
 vfree(ha->fcp_prio_cfg);
 ha->fcp_prio_cfg = ((void*)0);
 return QLA_FUNCTION_FAILED;
}
