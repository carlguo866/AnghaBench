
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_9__ ;
typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_23__ ;
typedef struct TYPE_37__ TYPE_1__ ;
typedef struct TYPE_36__ TYPE_17__ ;
typedef struct TYPE_35__ TYPE_16__ ;
typedef struct TYPE_34__ TYPE_15__ ;
typedef struct TYPE_33__ TYPE_14__ ;
typedef struct TYPE_32__ TYPE_13__ ;
typedef struct TYPE_31__ TYPE_12__ ;
typedef struct TYPE_30__ TYPE_11__ ;
typedef struct TYPE_29__ TYPE_10__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct qla_hw_data {scalar_t__ current_topology; scalar_t__ operating_mode; TYPE_13__* pdev; int srb_mempool; int selflogin_lock; } ;
struct fc_bsg_reply {int dummy; } ;
struct TYPE_33__ {scalar_t__ sg_cnt; scalar_t__ payload_len; int sg_list; } ;
struct TYPE_34__ {scalar_t__ sg_cnt; scalar_t__ payload_len; int sg_list; } ;
struct fc_bsg_job {int reply_len; int (* job_done ) (struct fc_bsg_job*) ;TYPE_4__* reply; TYPE_14__ request_payload; TYPE_15__ reply_payload; TYPE_8__* request; struct Scsi_Host* shost; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_37__ {struct fc_bsg_job* bsg_job; } ;
struct TYPE_35__ {int done; int type; int free; TYPE_1__ u; } ;
typedef TYPE_16__ srb_t ;
struct TYPE_46__ {int domain; int area; int al_pa; } ;
struct TYPE_31__ {int b24; TYPE_9__ b; } ;
struct TYPE_38__ {scalar_t__ loop_id; TYPE_12__ d_id; TYPE_17__* vha; } ;
struct TYPE_29__ {int domain; int area; int al_pa; } ;
struct TYPE_30__ {TYPE_10__ b; } ;
struct TYPE_42__ {int online; } ;
struct TYPE_36__ {int device_flags; scalar_t__ self_login_loop_id; scalar_t__ loop_id; TYPE_23__ bidir_fcport; TYPE_11__ d_id; TYPE_5__ flags; int dpc_flags; struct qla_hw_data* hw; } ;
typedef TYPE_17__ scsi_qla_host_t ;
struct TYPE_43__ {scalar_t__* vendor_cmd; } ;
struct TYPE_44__ {TYPE_6__ h_vendor; } ;
struct TYPE_45__ {TYPE_7__ rqst_data; } ;
struct TYPE_39__ {scalar_t__* vendor_rsp; } ;
struct TYPE_40__ {TYPE_2__ vendor_reply; } ;
struct TYPE_41__ {int result; scalar_t__ reply_payload_rcv_len; TYPE_3__ reply_data; } ;
struct TYPE_32__ {int dev; } ;


 int ABORT_ISP_ACTIVE ;
 int DFLG_NO_CABLE ;
 int DID_OK ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 scalar_t__ EXT_STATUS_BUSY ;
 scalar_t__ EXT_STATUS_DEVICE_OFFLINE ;
 scalar_t__ EXT_STATUS_INVALID_CFG ;
 scalar_t__ EXT_STATUS_MAILBOX ;
 scalar_t__ EXT_STATUS_NOT_SUPPORTED ;
 scalar_t__ EXT_STATUS_NO_MEMORY ;
 scalar_t__ EXT_STATUS_OK ;
 int GFP_KERNEL ;
 int ISP_ABORT_NEEDED ;
 int ISP_ABORT_RETRY ;
 scalar_t__ ISP_CFG_F ;
 int IS_BIDI_CAPABLE (struct qla_hw_data*) ;
 scalar_t__ P2P ;
 int SRB_BIDI_CMD ;
 scalar_t__ dma_map_sg (int *,int ,scalar_t__,int ) ;
 int dma_unmap_sg (int *,int ,scalar_t__,int ) ;
 int mempool_free (TYPE_16__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ql_dbg (int ,TYPE_17__*,int,char*,...) ;
 int ql_dbg_user ;
 int ql_log (int ,TYPE_17__*,int,char*,...) ;
 int ql_log_warn ;
 int qla2x00_bsg_job_done ;
 int qla2x00_bsg_sp_free ;
 scalar_t__ qla2x00_fabric_login (TYPE_17__*,TYPE_23__*,scalar_t__*) ;
 TYPE_16__* qla2x00_get_sp (TYPE_17__*,TYPE_23__*,int ) ;
 scalar_t__ qla2x00_start_bidir (TYPE_16__*,TYPE_17__*,scalar_t__) ;
 TYPE_17__* shost_priv (struct Scsi_Host*) ;
 int stub1 (struct fc_bsg_job*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
qla24xx_process_bidir_cmd(struct fc_bsg_job *bsg_job)
{
 struct Scsi_Host *host = bsg_job->shost;
 scsi_qla_host_t *vha = shost_priv(host);
 struct qla_hw_data *ha = vha->hw;
 uint16_t thread_id;
 uint32_t rval = EXT_STATUS_OK;
 uint16_t req_sg_cnt = 0;
 uint16_t rsp_sg_cnt = 0;
 uint16_t nextlid = 0;
 uint32_t tot_dsds;
 srb_t *sp = ((void*)0);
 uint32_t req_data_len = 0;
 uint32_t rsp_data_len = 0;


 if (!IS_BIDI_CAPABLE(ha)) {
  ql_log(ql_log_warn, vha, 0x70a0,
   "This adapter is not supported\n");
  rval = EXT_STATUS_NOT_SUPPORTED;
  goto done;
 }

 if (test_bit(ISP_ABORT_NEEDED, &vha->dpc_flags) ||
  test_bit(ABORT_ISP_ACTIVE, &vha->dpc_flags) ||
  test_bit(ISP_ABORT_RETRY, &vha->dpc_flags)) {
  rval = EXT_STATUS_BUSY;
  goto done;
 }


 if (!vha->flags.online) {
  ql_log(ql_log_warn, vha, 0x70a1,
   "Host is not online\n");
  rval = EXT_STATUS_DEVICE_OFFLINE;
  goto done;
 }


 if (vha->device_flags & DFLG_NO_CABLE) {
  ql_log(ql_log_warn, vha, 0x70a2,
   "Cable is unplugged...\n");
  rval = EXT_STATUS_INVALID_CFG;
  goto done;
 }


 if (ha->current_topology != ISP_CFG_F) {
  ql_log(ql_log_warn, vha, 0x70a3,
   "Host is not connected to the switch\n");
  rval = EXT_STATUS_INVALID_CFG;
  goto done;
 }


 if (ha->operating_mode != P2P) {
  ql_log(ql_log_warn, vha, 0x70a4,
      "Host is operating mode is not P2p\n");
  rval = EXT_STATUS_INVALID_CFG;
  goto done;
 }

 thread_id = bsg_job->request->rqst_data.h_vendor.vendor_cmd[1];

 mutex_lock(&ha->selflogin_lock);
 if (vha->self_login_loop_id == 0) {

  vha->bidir_fcport.vha = vha;
  vha->bidir_fcport.d_id.b.al_pa = vha->d_id.b.al_pa;
  vha->bidir_fcport.d_id.b.area = vha->d_id.b.area;
  vha->bidir_fcport.d_id.b.domain = vha->d_id.b.domain;
  vha->bidir_fcport.loop_id = vha->loop_id;

  if (qla2x00_fabric_login(vha, &(vha->bidir_fcport), &nextlid)) {
   ql_log(ql_log_warn, vha, 0x70a7,
       "Failed to login port %06X for bidirectional IOCB\n",
       vha->bidir_fcport.d_id.b24);
   mutex_unlock(&ha->selflogin_lock);
   rval = EXT_STATUS_MAILBOX;
   goto done;
  }
  vha->self_login_loop_id = nextlid - 1;

 }

 mutex_unlock(&ha->selflogin_lock);

 vha->bidir_fcport.loop_id = vha->self_login_loop_id;

 req_sg_cnt = dma_map_sg(&ha->pdev->dev,
  bsg_job->request_payload.sg_list,
  bsg_job->request_payload.sg_cnt,
  DMA_TO_DEVICE);

 if (!req_sg_cnt) {
  rval = EXT_STATUS_NO_MEMORY;
  goto done;
 }

 rsp_sg_cnt = dma_map_sg(&ha->pdev->dev,
  bsg_job->reply_payload.sg_list, bsg_job->reply_payload.sg_cnt,
  DMA_FROM_DEVICE);

 if (!rsp_sg_cnt) {
  rval = EXT_STATUS_NO_MEMORY;
  goto done_unmap_req_sg;
 }

 if ((req_sg_cnt != bsg_job->request_payload.sg_cnt) ||
  (rsp_sg_cnt != bsg_job->reply_payload.sg_cnt)) {
  ql_dbg(ql_dbg_user, vha, 0x70a9,
      "Dma mapping resulted in different sg counts "
      "[request_sg_cnt: %x dma_request_sg_cnt: %x reply_sg_cnt: "
      "%x dma_reply_sg_cnt: %x]\n",
      bsg_job->request_payload.sg_cnt, req_sg_cnt,
      bsg_job->reply_payload.sg_cnt, rsp_sg_cnt);
  rval = EXT_STATUS_NO_MEMORY;
  goto done_unmap_sg;
 }

 if (req_data_len != rsp_data_len) {
  rval = EXT_STATUS_BUSY;
  ql_log(ql_log_warn, vha, 0x70aa,
      "req_data_len != rsp_data_len\n");
  goto done_unmap_sg;
 }

 req_data_len = bsg_job->request_payload.payload_len;
 rsp_data_len = bsg_job->reply_payload.payload_len;



 sp = qla2x00_get_sp(vha, &(vha->bidir_fcport), GFP_KERNEL);
 if (!sp) {
  ql_dbg(ql_dbg_user, vha, 0x70ac,
      "Alloc SRB structure failed\n");
  rval = EXT_STATUS_NO_MEMORY;
  goto done_unmap_sg;
 }


 sp->u.bsg_job = bsg_job;
 sp->free = qla2x00_bsg_sp_free;
 sp->type = SRB_BIDI_CMD;
 sp->done = qla2x00_bsg_job_done;


 tot_dsds = rsp_sg_cnt + req_sg_cnt;

 rval = qla2x00_start_bidir(sp, vha, tot_dsds);
 if (rval != EXT_STATUS_OK)
  goto done_free_srb;

 return rval;

done_free_srb:
 mempool_free(sp, ha->srb_mempool);
done_unmap_sg:
 dma_unmap_sg(&ha->pdev->dev,
     bsg_job->reply_payload.sg_list,
     bsg_job->reply_payload.sg_cnt, DMA_FROM_DEVICE);
done_unmap_req_sg:
 dma_unmap_sg(&ha->pdev->dev,
     bsg_job->request_payload.sg_list,
     bsg_job->request_payload.sg_cnt, DMA_TO_DEVICE);
done:




 bsg_job->reply->reply_data.vendor_reply.vendor_rsp[0] = rval;
 bsg_job->reply_len = sizeof(struct fc_bsg_reply);
 bsg_job->reply->reply_payload_rcv_len = 0;
 bsg_job->reply->result = (DID_OK) << 16;
 bsg_job->job_done(bsg_job);

 return 0;
}
