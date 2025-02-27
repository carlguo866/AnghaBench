
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ib_cm_rep_event_param {int srq; int rnr_retry_count; int flow_control; int failover_accepted; int target_ack_delay; int initiator_depth; int responder_resources; void* starting_psn; void* remote_qpn; void* remote_qkey; int remote_ca_guid; } ;
struct TYPE_7__ {struct ib_cm_rep_event_param rep_rcvd; } ;
struct TYPE_8__ {int * private_data; TYPE_3__ param; } ;
struct cm_work {TYPE_4__ cm_event; TYPE_2__* mad_recv_wc; } ;
struct cm_rep_msg {int private_data; int resp_resources; int initiator_depth; int local_qkey; int local_ca_guid; } ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;
struct TYPE_5__ {scalar_t__ mad; } ;
struct TYPE_6__ {TYPE_1__ recv_buf; } ;


 void* be32_to_cpu (int ) ;
 int cm_rep_get_failover (struct cm_rep_msg*) ;
 int cm_rep_get_flow_ctrl (struct cm_rep_msg*) ;
 int cm_rep_get_qpn (struct cm_rep_msg*,int) ;
 int cm_rep_get_rnr_retry_count (struct cm_rep_msg*) ;
 int cm_rep_get_srq (struct cm_rep_msg*) ;
 int cm_rep_get_starting_psn (struct cm_rep_msg*) ;
 int cm_rep_get_target_ack_delay (struct cm_rep_msg*) ;

__attribute__((used)) static void cm_format_rep_event(struct cm_work *work, enum ib_qp_type qp_type)
{
 struct cm_rep_msg *rep_msg;
 struct ib_cm_rep_event_param *param;

 rep_msg = (struct cm_rep_msg *)work->mad_recv_wc->recv_buf.mad;
 param = &work->cm_event.param.rep_rcvd;
 param->remote_ca_guid = rep_msg->local_ca_guid;
 param->remote_qkey = be32_to_cpu(rep_msg->local_qkey);
 param->remote_qpn = be32_to_cpu(cm_rep_get_qpn(rep_msg, qp_type));
 param->starting_psn = be32_to_cpu(cm_rep_get_starting_psn(rep_msg));
 param->responder_resources = rep_msg->initiator_depth;
 param->initiator_depth = rep_msg->resp_resources;
 param->target_ack_delay = cm_rep_get_target_ack_delay(rep_msg);
 param->failover_accepted = cm_rep_get_failover(rep_msg);
 param->flow_control = cm_rep_get_flow_ctrl(rep_msg);
 param->rnr_retry_count = cm_rep_get_rnr_retry_count(rep_msg);
 param->srq = cm_rep_get_srq(rep_msg);
 work->cm_event.private_data = &rep_msg->private_data;
}
