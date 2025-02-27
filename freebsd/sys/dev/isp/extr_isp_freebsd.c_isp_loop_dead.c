
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef char* uintmax_t ;
struct isp_fc {scalar_t__ loop_down_time; int path; } ;
struct ccb_scsiio {int dummy; } ;
struct ac_device_changed {int port; int target; scalar_t__ arrived; int wwpn; } ;
struct ac_contract {scalar_t__ contract_data; int contract_number; } ;
struct TYPE_17__ {int isp_maxcmds; TYPE_1__* isp_xflist; } ;
typedef TYPE_2__ ispsoftc_t ;
struct TYPE_18__ {scalar_t__ state; int portid; int port_wwn; scalar_t__ is_initiator; scalar_t__ is_target; } ;
typedef TYPE_3__ fcportdb_t ;
struct TYPE_19__ {TYPE_3__* portdb; } ;
typedef TYPE_4__ fcparam ;
struct TYPE_16__ {int handle; struct ccb_scsiio* cmd; } ;


 int AC_CONTRACT ;
 int AC_CONTRACT_DEV_CHG ;
 TYPE_4__* FCPARAM (TYPE_2__*,int) ;
 scalar_t__ FC_PORTDB_STATE_NIL ;
 int HBA_BUSRESET ;
 int ISPCTL_ABORT_CMD ;
 int ISP_DMAFREE (TYPE_2__*,struct ccb_scsiio*,int) ;
 struct isp_fc* ISP_FC_PC (TYPE_2__*,int) ;
 scalar_t__ ISP_H2HT (int) ;
 scalar_t__ ISP_HANDLE_INITIATOR ;
 int ISP_LOGCONFIG ;
 int ISP_LOGDEBUG0 ;
 int ISP_LOGWARN ;
 int ISP_LOG_SANCFG ;
 int MAX_FC_TARG ;
 scalar_t__ XS_LUN (struct ccb_scsiio*) ;
 int XS_SETERR (struct ccb_scsiio*,int ) ;
 int XS_TGT (struct ccb_scsiio*) ;
 scalar_t__ XS_XFRLEN (struct ccb_scsiio*) ;
 scalar_t__ isp_control (TYPE_2__*,int ,struct ccb_scsiio*) ;
 int isp_destroy_handle (TYPE_2__*,int) ;
 int isp_done (struct ccb_scsiio*) ;
 int isp_make_gone (TYPE_2__*,TYPE_3__*,int,int) ;
 int isp_prt (TYPE_2__*,int,char*,int,...) ;
 int isp_unfreeze_loopdown (TYPE_2__*,int) ;
 char* prom3 ;
 int xpt_async (int ,int ,struct ac_contract*) ;

__attribute__((used)) static void
isp_loop_dead(ispsoftc_t *isp, int chan)
{
 fcparam *fcp = FCPARAM(isp, chan);
 struct isp_fc *fc = ISP_FC_PC(isp, chan);
 fcportdb_t *lp;
 struct ac_contract ac;
 struct ac_device_changed *adc;
 int dbidx, i;

 isp_prt(isp, ISP_LOG_SANCFG|ISP_LOGDEBUG0, "Chan %d Loop is dead", chan);




 for (dbidx = 0; dbidx < MAX_FC_TARG; dbidx++) {
  lp = &fcp->portdb[dbidx];

  if (lp->state == FC_PORTDB_STATE_NIL)
   continue;

  for (i = 0; i < isp->isp_maxcmds; i++) {
   struct ccb_scsiio *xs;

   if (ISP_H2HT(isp->isp_xflist[i].handle) != ISP_HANDLE_INITIATOR) {
    continue;
   }
   if ((xs = isp->isp_xflist[i].cmd) == ((void*)0)) {
    continue;
                        }
   if (dbidx != XS_TGT(xs)) {
    continue;
   }
   isp_prt(isp, ISP_LOGWARN, "command handle 0x%x for %d.%d.%jx orphaned by loop down timeout",
       isp->isp_xflist[i].handle, chan, XS_TGT(xs),
       (uintmax_t)XS_LUN(xs));






   if (isp_control(isp, ISPCTL_ABORT_CMD, xs) == 0) {
    continue;
   }

   if (XS_XFRLEN(xs)) {
    ISP_DMAFREE(isp, xs, isp->isp_xflist[i].handle);
   }
   isp_destroy_handle(isp, isp->isp_xflist[i].handle);
   isp_prt(isp, ISP_LOGWARN, "command handle 0x%x for %d.%d.%jx could not be aborted and was destroyed",
       isp->isp_xflist[i].handle, chan, XS_TGT(xs),
       (uintmax_t)XS_LUN(xs));
   XS_SETERR(xs, HBA_BUSRESET);
   isp_done(xs);
  }

  isp_prt(isp, ISP_LOGCONFIG, prom3, chan, dbidx, lp->portid, "Loop Down Timeout");
  if (lp->is_target) {
   lp->is_target = 0;
   isp_make_gone(isp, lp, chan, dbidx);
  }
  if (lp->is_initiator) {
   lp->is_initiator = 0;
   ac.contract_number = AC_CONTRACT_DEV_CHG;
   adc = (struct ac_device_changed *) ac.contract_data;
   adc->wwpn = lp->port_wwn;
   adc->port = lp->portid;
   adc->target = dbidx;
   adc->arrived = 0;
   xpt_async(AC_CONTRACT, fc->path, &ac);
  }
 }

 isp_unfreeze_loopdown(isp, chan);
 fc->loop_down_time = 0;
}
