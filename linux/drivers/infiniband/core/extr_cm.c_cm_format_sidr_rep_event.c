
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ib_cm_sidr_rep_event_param {int sgid_attr; int info_len; int * info; void* qpn; void* qkey; int status; } ;
struct TYPE_10__ {struct ib_cm_sidr_rep_event_param sidr_rep_rcvd; } ;
struct TYPE_14__ {int * private_data; TYPE_3__ param; } ;
struct cm_work {TYPE_7__ cm_event; TYPE_2__* mad_recv_wc; } ;
struct cm_sidr_rep_msg {int private_data; int info_length; int info; int qkey; int status; } ;
struct TYPE_11__ {int sgid_attr; } ;
struct TYPE_12__ {TYPE_4__ grh; } ;
struct TYPE_13__ {TYPE_5__ ah_attr; } ;
struct cm_id_private {TYPE_6__ av; } ;
struct TYPE_8__ {scalar_t__ mad; } ;
struct TYPE_9__ {TYPE_1__ recv_buf; } ;


 void* be32_to_cpu (int ) ;
 int cm_sidr_rep_get_qpn (struct cm_sidr_rep_msg*) ;

__attribute__((used)) static void cm_format_sidr_rep_event(struct cm_work *work,
         const struct cm_id_private *cm_id_priv)
{
 struct cm_sidr_rep_msg *sidr_rep_msg;
 struct ib_cm_sidr_rep_event_param *param;

 sidr_rep_msg = (struct cm_sidr_rep_msg *)
    work->mad_recv_wc->recv_buf.mad;
 param = &work->cm_event.param.sidr_rep_rcvd;
 param->status = sidr_rep_msg->status;
 param->qkey = be32_to_cpu(sidr_rep_msg->qkey);
 param->qpn = be32_to_cpu(cm_sidr_rep_get_qpn(sidr_rep_msg));
 param->info = &sidr_rep_msg->info;
 param->info_len = sidr_rep_msg->info_length;
 param->sgid_attr = cm_id_priv->av.ah_attr.grh.sgid_attr;
 work->cm_event.private_data = &sidr_rep_msg->private_data;
}
