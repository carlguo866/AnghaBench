
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct esas2r_request {struct esas2r_disc_context* interrupt_cx; int comp_cb; TYPE_3__* vda_rsp_data; } ;
struct esas2r_disc_context {int dev_ix; int scan_gen; } ;
struct esas2r_adapter {int dummy; } ;
struct atto_vda_devinfo {int dummy; } ;
struct TYPE_4__ {struct atto_vda_devinfo dev_info; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
struct TYPE_6__ {TYPE_2__ mgt_data; } ;


 int VDAMGT_DEV_PT_INFO ;
 int esas2r_build_mgt_req (struct esas2r_adapter*,struct esas2r_request*,int ,int ,int ,int,int *) ;
 int esas2r_disc_passthru_dev_info_cb ;
 int esas2r_disc_start_request (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_rq_init_request (struct esas2r_request*,struct esas2r_adapter*) ;
 int esas2r_trace (char*,int ) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;
 int memset (struct atto_vda_devinfo*,int ,int) ;

__attribute__((used)) static bool esas2r_disc_passthru_dev_info(struct esas2r_adapter *a,
       struct esas2r_request *rq)
{
 struct esas2r_disc_context *dc =
  (struct esas2r_disc_context *)rq->interrupt_cx;
 bool rslt;
 struct atto_vda_devinfo *devinfo;

 esas2r_trace_enter();

 esas2r_trace("dev_ix: %d", dc->dev_ix);

 esas2r_rq_init_request(rq, a);

 devinfo = &rq->vda_rsp_data->mgt_data.data.dev_info;

 memset(devinfo, 0, sizeof(struct atto_vda_devinfo));

 esas2r_build_mgt_req(a,
        rq,
        VDAMGT_DEV_PT_INFO,
        dc->scan_gen,
        dc->dev_ix,
        sizeof(struct atto_vda_devinfo),
        ((void*)0));

 rq->comp_cb = esas2r_disc_passthru_dev_info_cb;

 rq->interrupt_cx = dc;

 rslt = esas2r_disc_start_request(a, rq);

 esas2r_trace_exit();

 return rslt;
}
