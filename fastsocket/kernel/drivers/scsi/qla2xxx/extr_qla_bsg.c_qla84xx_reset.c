
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct qla_hw_data {int dummy; } ;
struct fc_bsg_job {int (* job_done ) (struct fc_bsg_job*) ;TYPE_4__* reply; TYPE_3__* request; struct Scsi_Host* shost; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_14__ {struct qla_hw_data* hw; } ;
typedef TYPE_5__ scsi_qla_host_t ;
struct TYPE_13__ {int result; } ;
struct TYPE_10__ {scalar_t__* vendor_cmd; } ;
struct TYPE_11__ {TYPE_1__ h_vendor; } ;
struct TYPE_12__ {TYPE_2__ rqst_data; } ;


 scalar_t__ A84_ISSUE_RESET_DIAG_FW ;
 int DID_ERROR ;
 int DID_OK ;
 int EINVAL ;
 int IS_QLA84XX (struct qla_hw_data*) ;
 int ql_dbg (int ,TYPE_5__*,int,char*) ;
 int ql_dbg_user ;
 int ql_log (int ,TYPE_5__*,int,char*) ;
 int ql_log_warn ;
 int qla84xx_reset_chip (TYPE_5__*,int) ;
 TYPE_5__* shost_priv (struct Scsi_Host*) ;
 int stub1 (struct fc_bsg_job*) ;

__attribute__((used)) static int
qla84xx_reset(struct fc_bsg_job *bsg_job)
{
 struct Scsi_Host *host = bsg_job->shost;
 scsi_qla_host_t *vha = shost_priv(host);
 struct qla_hw_data *ha = vha->hw;
 int rval = 0;
 uint32_t flag;

 if (!IS_QLA84XX(ha)) {
  ql_dbg(ql_dbg_user, vha, 0x702f, "Not 84xx, exiting.\n");
  return -EINVAL;
 }

 flag = bsg_job->request->rqst_data.h_vendor.vendor_cmd[1];

 rval = qla84xx_reset_chip(vha, flag == A84_ISSUE_RESET_DIAG_FW);

 if (rval) {
  ql_log(ql_log_warn, vha, 0x7030,
      "Vendor request 84xx reset failed.\n");
  rval = (DID_ERROR << 16);

 } else {
  ql_dbg(ql_dbg_user, vha, 0x7031,
      "Vendor request 84xx reset completed.\n");
  bsg_job->reply->result = DID_OK;
  bsg_job->job_done(bsg_job);
 }

 return rval;
}
