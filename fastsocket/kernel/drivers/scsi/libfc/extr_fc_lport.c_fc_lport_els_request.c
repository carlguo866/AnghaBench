
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int (* exch_seq_send ) (struct fc_lport*,struct fc_frame*,int ,int *,struct fc_bsg_info*,int ) ;} ;
struct fc_lport {TYPE_3__ tt; int port_id; } ;
struct fc_frame_header {scalar_t__ fh_parm_offset; scalar_t__ fh_df_ctl; scalar_t__ fh_cs_ctl; int fh_f_ctl; int fh_type; int fh_s_id; int fh_d_id; int fh_r_ctl; } ;
struct fc_frame {int dummy; } ;
struct TYPE_5__ {int sg_list; int sg_cnt; } ;
struct TYPE_4__ {int payload_len; int sg_cnt; int sg_list; } ;
struct fc_bsg_job {TYPE_2__ reply_payload; TYPE_1__ request_payload; } ;
struct fc_bsg_info {int sg; int nents; int rsp_code; struct fc_lport* lport; struct fc_bsg_job* job; } ;


 int ECOMM ;
 int ELS_LS_ACC ;
 int ENOMEM ;
 int FC_FCTL_REQ ;
 int FC_RCTL_ELS_REQ ;
 int FC_TYPE_ELS ;
 int GFP_KERNEL ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 int fc_frame_free (struct fc_frame*) ;
 struct fc_frame_header* fc_frame_header_get (struct fc_frame*) ;
 char* fc_frame_payload_get (struct fc_frame*,int) ;
 int fc_lport_bsg_resp ;
 int hton24 (int ,int ) ;
 int kfree (struct fc_bsg_info*) ;
 struct fc_bsg_info* kzalloc (int,int ) ;
 int sg_copy_to_buffer (int ,int ,char*,int) ;
 int stub1 (struct fc_lport*,struct fc_frame*,int ,int *,struct fc_bsg_info*,int ) ;

__attribute__((used)) static int fc_lport_els_request(struct fc_bsg_job *job,
    struct fc_lport *lport,
    u32 did, u32 tov)
{
 struct fc_bsg_info *info;
 struct fc_frame *fp;
 struct fc_frame_header *fh;
 char *pp;
 int len;

 fp = fc_frame_alloc(lport, job->request_payload.payload_len);
 if (!fp)
  return -ENOMEM;

 len = job->request_payload.payload_len;
 pp = fc_frame_payload_get(fp, len);

 sg_copy_to_buffer(job->request_payload.sg_list,
     job->request_payload.sg_cnt,
     pp, len);

 fh = fc_frame_header_get(fp);
 fh->fh_r_ctl = FC_RCTL_ELS_REQ;
 hton24(fh->fh_d_id, did);
 hton24(fh->fh_s_id, lport->port_id);
 fh->fh_type = FC_TYPE_ELS;
 hton24(fh->fh_f_ctl, FC_FCTL_REQ);
 fh->fh_cs_ctl = 0;
 fh->fh_df_ctl = 0;
 fh->fh_parm_offset = 0;

 info = kzalloc(sizeof(struct fc_bsg_info), GFP_KERNEL);
 if (!info) {
  fc_frame_free(fp);
  return -ENOMEM;
 }

 info->job = job;
 info->lport = lport;
 info->rsp_code = ELS_LS_ACC;
 info->nents = job->reply_payload.sg_cnt;
 info->sg = job->reply_payload.sg_list;

 if (!lport->tt.exch_seq_send(lport, fp, fc_lport_bsg_resp,
         ((void*)0), info, tov)) {
  kfree(info);
  return -ECOMM;
 }
 return 0;
}
