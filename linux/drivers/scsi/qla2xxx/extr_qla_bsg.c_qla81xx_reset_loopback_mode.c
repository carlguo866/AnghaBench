
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct qla_hw_data {int notify_dcbx_comp; int notify_lb_portup_comp; int lb_portup_comp; int dcbx_comp; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;
typedef int new_config ;


 int DCBX_COMP_TIMEOUT ;
 int EINVAL ;
 int ENABLE_EXTERNAL_LOOPBACK ;
 int ENABLE_INTERNAL_LOOPBACK ;
 int HZ ;
 int INTERNAL_LOOPBACK_MASK ;
 int IS_QLA8031 (struct qla_hw_data*) ;
 int IS_QLA8044 (struct qla_hw_data*) ;
 int IS_QLA81XX (struct qla_hw_data*) ;
 int LB_PORTUP_COMP_TIMEOUT ;
 int QLA_SUCCESS ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int ql_dbg (int ,TYPE_1__*,int,char*,...) ;
 int ql_dbg_user ;
 int ql_log (int ,TYPE_1__*,int,char*) ;
 int ql_log_warn ;
 int qla81xx_set_port_config (TYPE_1__*,int*) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static inline int
qla81xx_reset_loopback_mode(scsi_qla_host_t *vha, uint16_t *config,
       int wait, int wait2)
{
 int ret = 0;
 int rval = 0;
 uint16_t new_config[4];
 struct qla_hw_data *ha = vha->hw;

 if (!IS_QLA81XX(ha) && !IS_QLA8031(ha) && !IS_QLA8044(ha))
  goto done_reset_internal;

 memset(new_config, 0 , sizeof(new_config));
 if ((config[0] & INTERNAL_LOOPBACK_MASK) >> 1 ==
     ENABLE_INTERNAL_LOOPBACK ||
     (config[0] & INTERNAL_LOOPBACK_MASK) >> 1 ==
     ENABLE_EXTERNAL_LOOPBACK) {
  new_config[0] = config[0] & ~INTERNAL_LOOPBACK_MASK;
  ql_dbg(ql_dbg_user, vha, 0x70bf, "new_config[0]=%02x\n",
      (new_config[0] & INTERNAL_LOOPBACK_MASK));
  memcpy(&new_config[1], &config[1], sizeof(uint16_t) * 3) ;

  ha->notify_dcbx_comp = wait;
  ha->notify_lb_portup_comp = wait2;

  ret = qla81xx_set_port_config(vha, new_config);
  if (ret != QLA_SUCCESS) {
   ql_log(ql_log_warn, vha, 0x7025,
       "Set port config failed.\n");
   ha->notify_dcbx_comp = 0;
   ha->notify_lb_portup_comp = 0;
   rval = -EINVAL;
   goto done_reset_internal;
  }


  if (wait && !wait_for_completion_timeout(&ha->dcbx_comp,
   (DCBX_COMP_TIMEOUT * HZ))) {
   ql_dbg(ql_dbg_user, vha, 0x7026,
       "DCBX completion not received.\n");
   ha->notify_dcbx_comp = 0;
   ha->notify_lb_portup_comp = 0;
   rval = -EINVAL;
   goto done_reset_internal;
  } else
   ql_dbg(ql_dbg_user, vha, 0x7027,
       "DCBX completion received.\n");

  if (wait2 &&
      !wait_for_completion_timeout(&ha->lb_portup_comp,
      (LB_PORTUP_COMP_TIMEOUT * HZ))) {
   ql_dbg(ql_dbg_user, vha, 0x70c5,
       "Port up completion not received.\n");
   ha->notify_lb_portup_comp = 0;
   rval = -EINVAL;
   goto done_reset_internal;
  } else
   ql_dbg(ql_dbg_user, vha, 0x70c6,
       "Port up completion received.\n");

  ha->notify_dcbx_comp = 0;
  ha->notify_lb_portup_comp = 0;
 }
done_reset_internal:
 return rval;
}
