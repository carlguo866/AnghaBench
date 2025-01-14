
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_12__ ;
typedef struct TYPE_23__ TYPE_11__ ;
typedef struct TYPE_22__ TYPE_10__ ;


typedef int uint16_t ;
struct qla_hw_data {TYPE_9__* pdev; } ;
struct TYPE_30__ {int al_pa; int area; int domain; } ;
struct TYPE_31__ {TYPE_6__ b; } ;
struct fc_port {int loop_id; TYPE_7__ d_id; TYPE_12__* vha; } ;
struct TYPE_22__ {int sg_cnt; int sg_list; } ;
struct TYPE_32__ {int sg_cnt; int sg_list; } ;
struct fc_bsg_job {TYPE_10__ reply_payload; TYPE_8__ request_payload; TYPE_5__* request; struct Scsi_Host* shost; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_26__ {struct fc_bsg_job* bsg_job; } ;
struct TYPE_23__ {char* name; int done; int free; TYPE_2__ u; int iocbs; int type; } ;
typedef TYPE_11__ srb_t ;
struct TYPE_25__ {int online; } ;
struct TYPE_24__ {int mgmt_svr_loop_id; TYPE_1__ flags; struct qla_hw_data* hw; } ;
typedef TYPE_12__ scsi_qla_host_t ;
struct TYPE_33__ {int dev; } ;
struct TYPE_27__ {int preamble_word1; int preamble_word2; int * port_id; } ;
struct TYPE_28__ {TYPE_3__ h_ct; } ;
struct TYPE_29__ {TYPE_4__ rqst_data; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int DRIVER_ERROR ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NPH_SNS ;
 int QLA_SUCCESS ;
 int SRB_CT_CMD ;
 int cpu_to_le16 (int ) ;
 int dma_map_sg (int *,int ,int,int ) ;
 int dma_unmap_sg (int *,int ,int,int ) ;
 int kfree (struct fc_port*) ;
 int ql_dbg (int ,TYPE_12__*,int,char*,...) ;
 int ql_dbg_user ;
 int ql_log (int ,TYPE_12__*,int,char*,...) ;
 int ql_log_warn ;
 int qla24xx_calc_ct_iocbs (int) ;
 struct fc_port* qla2x00_alloc_fcport (TYPE_12__*,int ) ;
 int qla2x00_bsg_job_done ;
 int qla2x00_bsg_sp_free ;
 TYPE_11__* qla2x00_get_sp (TYPE_12__*,struct fc_port*,int ) ;
 int qla2x00_rel_sp (TYPE_12__*,TYPE_11__*) ;
 int qla2x00_start_sp (TYPE_11__*) ;
 TYPE_12__* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int
qla2x00_process_ct(struct fc_bsg_job *bsg_job)
{
 srb_t *sp;
 struct Scsi_Host *host = bsg_job->shost;
 scsi_qla_host_t *vha = shost_priv(host);
 struct qla_hw_data *ha = vha->hw;
 int rval = (DRIVER_ERROR << 16);
 int req_sg_cnt, rsp_sg_cnt;
 uint16_t loop_id;
 struct fc_port *fcport;
 char *type = "FC_BSG_HST_CT";

 req_sg_cnt =
  dma_map_sg(&ha->pdev->dev, bsg_job->request_payload.sg_list,
  bsg_job->request_payload.sg_cnt, DMA_TO_DEVICE);
 if (!req_sg_cnt) {
  ql_log(ql_log_warn, vha, 0x700f,
      "dma_map_sg return %d for request\n", req_sg_cnt);
  rval = -ENOMEM;
  goto done;
 }

 rsp_sg_cnt = dma_map_sg(&ha->pdev->dev, bsg_job->reply_payload.sg_list,
  bsg_job->reply_payload.sg_cnt, DMA_FROM_DEVICE);
 if (!rsp_sg_cnt) {
  ql_log(ql_log_warn, vha, 0x7010,
      "dma_map_sg return %d for reply\n", rsp_sg_cnt);
  rval = -ENOMEM;
  goto done;
 }

 if ((req_sg_cnt != bsg_job->request_payload.sg_cnt) ||
     (rsp_sg_cnt != bsg_job->reply_payload.sg_cnt)) {
  ql_log(ql_log_warn, vha, 0x7011,
      "request_sg_cnt: %x dma_request_sg_cnt: %x reply_sg_cnt:%x "
      "dma_reply_sg_cnt: %x\n", bsg_job->request_payload.sg_cnt,
      req_sg_cnt, bsg_job->reply_payload.sg_cnt, rsp_sg_cnt);
  rval = -EAGAIN;
  goto done_unmap_sg;
 }

 if (!vha->flags.online) {
  ql_log(ql_log_warn, vha, 0x7012,
      "Host is not online.\n");
  rval = -EIO;
  goto done_unmap_sg;
 }

 loop_id =
  (bsg_job->request->rqst_data.h_ct.preamble_word1 & 0xFF000000)
   >> 24;
 switch (loop_id) {
 case 0xFC:
  loop_id = cpu_to_le16(NPH_SNS);
  break;
 case 0xFA:
  loop_id = vha->mgmt_svr_loop_id;
  break;
 default:
  ql_dbg(ql_dbg_user, vha, 0x7013,
      "Unknown loop id: %x.\n", loop_id);
  rval = -EINVAL;
  goto done_unmap_sg;
 }






 fcport = qla2x00_alloc_fcport(vha, GFP_KERNEL);
 if (!fcport) {
  ql_log(ql_log_warn, vha, 0x7014,
      "Failed to allocate fcport.\n");
  rval = -ENOMEM;
  goto done_unmap_sg;
 }


 fcport->vha = vha;
 fcport->d_id.b.al_pa = bsg_job->request->rqst_data.h_ct.port_id[0];
 fcport->d_id.b.area = bsg_job->request->rqst_data.h_ct.port_id[1];
 fcport->d_id.b.domain = bsg_job->request->rqst_data.h_ct.port_id[2];
 fcport->loop_id = loop_id;


 sp = qla2x00_get_sp(vha, fcport, GFP_KERNEL);
 if (!sp) {
  ql_log(ql_log_warn, vha, 0x7015,
      "qla2x00_get_sp failed.\n");
  rval = -ENOMEM;
  goto done_free_fcport;
 }

 sp->type = SRB_CT_CMD;
 sp->name = "bsg_ct";
 sp->iocbs = qla24xx_calc_ct_iocbs(req_sg_cnt + rsp_sg_cnt);
 sp->u.bsg_job = bsg_job;
 sp->free = qla2x00_bsg_sp_free;
 sp->done = qla2x00_bsg_job_done;

 ql_dbg(ql_dbg_user, vha, 0x7016,
     "bsg rqst type: %s else type: %x - "
     "loop-id=%x portid=%02x%02x%02x.\n", type,
     (bsg_job->request->rqst_data.h_ct.preamble_word2 >> 16),
     fcport->loop_id, fcport->d_id.b.domain, fcport->d_id.b.area,
     fcport->d_id.b.al_pa);

 rval = qla2x00_start_sp(sp);
 if (rval != QLA_SUCCESS) {
  ql_log(ql_log_warn, vha, 0x7017,
      "qla2x00_start_sp failed=%d.\n", rval);
  qla2x00_rel_sp(vha, sp);
  rval = -EIO;
  goto done_free_fcport;
 }
 return rval;

done_free_fcport:
 kfree(fcport);
done_unmap_sg:
 dma_unmap_sg(&ha->pdev->dev, bsg_job->request_payload.sg_list,
  bsg_job->request_payload.sg_cnt, DMA_TO_DEVICE);
 dma_unmap_sg(&ha->pdev->dev, bsg_job->reply_payload.sg_list,
  bsg_job->reply_payload.sg_cnt, DMA_FROM_DEVICE);
done:
 return rval;
}
