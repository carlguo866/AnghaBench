
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_send_ct {scalar_t__ status; int resp; int req; } ;
struct zfcp_port {scalar_t__ wwpn; int d_id; } ;
struct zfcp_gid_pn_data {struct zfcp_port* port; struct zfcp_send_ct ct; } ;
struct TYPE_2__ {scalar_t__ cmd_rsp_code; } ;
struct ct_iu_gid_pn_resp {int d_id; TYPE_1__ header; } ;
struct ct_iu_gid_pn_req {scalar_t__ wwpn; } ;


 scalar_t__ ZFCP_CT_ACCEPT ;
 int ZFCP_DID_MASK ;
 void* sg_virt (int ) ;

__attribute__((used)) static void zfcp_fc_ns_gid_pn_eval(unsigned long data)
{
 struct zfcp_gid_pn_data *gid_pn = (struct zfcp_gid_pn_data *) data;
 struct zfcp_send_ct *ct = &gid_pn->ct;
 struct ct_iu_gid_pn_req *ct_iu_req = sg_virt(ct->req);
 struct ct_iu_gid_pn_resp *ct_iu_resp = sg_virt(ct->resp);
 struct zfcp_port *port = gid_pn->port;

 if (ct->status)
  return;
 if (ct_iu_resp->header.cmd_rsp_code != ZFCP_CT_ACCEPT)
  return;


 if (ct_iu_req->wwpn != port->wwpn)
  return;

 port->d_id = ct_iu_resp->d_id & ZFCP_DID_MASK;
}
