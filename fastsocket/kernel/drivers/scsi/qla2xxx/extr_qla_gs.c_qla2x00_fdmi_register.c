
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct qla_hw_data {int dummy; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 scalar_t__ IS_QLA2100 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2200 (struct qla_hw_data*) ;
 scalar_t__ IS_QLAFX00 (struct qla_hw_data*) ;
 int QLA_ALREADY_REGISTERED ;
 int QLA_FUNCTION_FAILED ;
 int qla2x00_fdmi_dhba (TYPE_1__*) ;
 int qla2x00_fdmi_rhba (TYPE_1__*) ;
 int qla2x00_fdmi_rpa (TYPE_1__*) ;
 int qla2x00_mgmt_svr_login (TYPE_1__*) ;

int
qla2x00_fdmi_register(scsi_qla_host_t *vha)
{
 int rval;
       struct qla_hw_data *ha = vha->hw;

 if (IS_QLA2100(ha) || IS_QLA2200(ha) ||
     IS_QLAFX00(ha))
  return QLA_FUNCTION_FAILED;

 rval = qla2x00_mgmt_svr_login(vha);
 if (rval)
  return rval;

 rval = qla2x00_fdmi_rhba(vha);
 if (rval) {
  if (rval != QLA_ALREADY_REGISTERED)
   return rval;

  rval = qla2x00_fdmi_dhba(vha);
  if (rval)
   return rval;

  rval = qla2x00_fdmi_rhba(vha);
  if (rval)
   return rval;
 }
 rval = qla2x00_fdmi_rpa(vha);

 return rval;
}
