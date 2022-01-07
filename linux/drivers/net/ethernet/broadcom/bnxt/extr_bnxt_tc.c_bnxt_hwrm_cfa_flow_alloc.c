
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int u16 ;
struct hwrm_cfa_flow_alloc_output {int flow_id; int ext_flow_handle; int flow_handle; } ;
struct hwrm_cfa_flow_alloc_input {void* ethertype; void* action_flags; int * smac; int l2_rewrite_smac; int * dmac; int l2_rewrite_dmac; scalar_t__ l2_rewrite_vlan_tpid; int l2_rewrite_vlan_tci; void* dst_fid; void* flags; void* l4_dst_port_mask; void* l4_dst_port; void* l4_src_port_mask; void* l4_src_port; void* ip_src_mask_len; int * ip_src; void* ip_dst_mask_len; int * ip_dst; int outer_vlan_tci; int ip_proto; int tunnel_handle; int ref_flow_handle; void* src_fid; int member_0; } ;
struct TYPE_22__ {int code; int type; } ;
struct TYPE_20__ {void* dport; void* sport; } ;
struct TYPE_13__ {int ** s6_addr32; } ;
struct TYPE_18__ {TYPE_11__ saddr; TYPE_11__ daddr; } ;
struct TYPE_16__ {int s_addr; } ;
struct TYPE_15__ {int s_addr; } ;
struct TYPE_17__ {TYPE_3__ saddr; TYPE_2__ daddr; } ;
struct bnxt_tc_l3_key {TYPE_9__ icmp; TYPE_7__ ports; TYPE_5__ ipv6; TYPE_4__ ipv4; } ;
struct bnxt_tc_flow_node {int flow_id; int ext_flow_handle; int flow_handle; } ;
struct TYPE_12__ {int code; int type; } ;
struct TYPE_19__ {void* dport; void* sport; } ;
struct TYPE_21__ {TYPE_10__ icmp; TYPE_6__ ports; int ip_proto; } ;
struct TYPE_14__ {void* ether_type; scalar_t__ num_vlans; int inner_vlan_tci; int ** smac; int ** dmac; } ;
struct bnxt_tc_actions {int flags; int push_vlan_tci; scalar_t__ push_vlan_tpid; int dst_fid; } ;
struct bnxt_tc_flow {int flags; struct bnxt_tc_l3_key l4_mask; TYPE_8__ l4_key; TYPE_1__ l2_key; int src_fid; struct bnxt_tc_l3_key l3_key; struct bnxt_tc_l3_key l3_mask; struct bnxt_tc_actions actions; } ;
struct bnxt {int fw_cap; int hwrm_cmd_lock; } ;
typedef int req ;
typedef int __le32 ;
typedef int __le16 ;


 int BNXT_FW_CAP_OVS_64BIT_HANDLE ;
 int BNXT_TC_ACTION_FLAG_DROP ;
 int BNXT_TC_ACTION_FLAG_FWD ;
 int BNXT_TC_ACTION_FLAG_POP_VLAN ;
 int BNXT_TC_ACTION_FLAG_PUSH_VLAN ;
 int BNXT_TC_ACTION_FLAG_TUNNEL_DECAP ;
 int BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP ;
 int BNXT_TC_FLOW_FLAGS_ETH_ADDRS ;
 int BNXT_TC_FLOW_FLAGS_ICMP ;
 int BNXT_TC_FLOW_FLAGS_IPV4_ADDRS ;
 int BNXT_TC_FLOW_FLAGS_IPV6_ADDRS ;
 int BNXT_TC_FLOW_FLAGS_PORTS ;
 int CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_DROP ;
 int CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_FWD ;
 int CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_L2_HEADER_REWRITE ;
 int CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_TUNNEL ;
 int CFA_FLOW_ALLOC_REQ_FLAGS_FLOWTYPE_IPV4 ;
 int CFA_FLOW_ALLOC_REQ_FLAGS_FLOWTYPE_IPV6 ;
 int CFA_FLOW_ALLOC_REQ_FLAGS_FLOWTYPE_L2 ;
 int CFA_FLOW_ALLOC_REQ_FLAGS_NUM_VLAN_ONE ;
 int CFA_FLOW_ALLOC_REQ_FLAGS_TUNNEL ;
 int ETH_ALEN ;
 int ETH_P_IP ;
 int HWRM_CFA_FLOW_ALLOC ;
 int HWRM_CMD_TIMEOUT ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_cfa_flow_alloc_input*,int,int ) ;
 struct hwrm_cfa_flow_alloc_output* bnxt_get_hwrm_resp_addr (struct bnxt*,struct hwrm_cfa_flow_alloc_input*) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_cfa_flow_alloc_input*,int ,int,int) ;
 void* cpu_to_le16 (int ) ;
 void* htons (int ) ;
 void* inet_mask_len (int ) ;
 void* ipv6_mask_len (TYPE_11__*) ;
 scalar_t__ is_wildcard (struct bnxt_tc_l3_key*,int) ;
 int memcpy (int *,int **,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bnxt_hwrm_cfa_flow_alloc(struct bnxt *bp, struct bnxt_tc_flow *flow,
        __le16 ref_flow_handle,
        __le32 tunnel_handle,
        struct bnxt_tc_flow_node *flow_node)
{
 struct bnxt_tc_actions *actions = &flow->actions;
 struct bnxt_tc_l3_key *l3_mask = &flow->l3_mask;
 struct bnxt_tc_l3_key *l3_key = &flow->l3_key;
 struct hwrm_cfa_flow_alloc_input req = { 0 };
 struct hwrm_cfa_flow_alloc_output *resp;
 u16 flow_flags = 0, action_flags = 0;
 int rc;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_CFA_FLOW_ALLOC, -1, -1);

 req.src_fid = cpu_to_le16(flow->src_fid);
 req.ref_flow_handle = ref_flow_handle;

 if (actions->flags & BNXT_TC_ACTION_FLAG_TUNNEL_DECAP ||
     actions->flags & BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP) {
  req.tunnel_handle = tunnel_handle;
  flow_flags |= CFA_FLOW_ALLOC_REQ_FLAGS_TUNNEL;
  action_flags |= CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_TUNNEL;
 }

 req.ethertype = flow->l2_key.ether_type;
 req.ip_proto = flow->l4_key.ip_proto;

 if (flow->flags & BNXT_TC_FLOW_FLAGS_ETH_ADDRS) {
  memcpy(req.dmac, flow->l2_key.dmac, ETH_ALEN);
  memcpy(req.smac, flow->l2_key.smac, ETH_ALEN);
 }

 if (flow->l2_key.num_vlans > 0) {
  flow_flags |= CFA_FLOW_ALLOC_REQ_FLAGS_NUM_VLAN_ONE;




  req.outer_vlan_tci = flow->l2_key.inner_vlan_tci;
 }


 if (is_wildcard(l3_mask, sizeof(*l3_mask)) &&
     is_wildcard(&flow->l4_mask, sizeof(flow->l4_mask))) {
  flow_flags |= CFA_FLOW_ALLOC_REQ_FLAGS_FLOWTYPE_L2;
 } else {
  flow_flags |= flow->l2_key.ether_type == htons(ETH_P_IP) ?
    CFA_FLOW_ALLOC_REQ_FLAGS_FLOWTYPE_IPV4 :
    CFA_FLOW_ALLOC_REQ_FLAGS_FLOWTYPE_IPV6;

  if (flow->flags & BNXT_TC_FLOW_FLAGS_IPV4_ADDRS) {
   req.ip_dst[0] = l3_key->ipv4.daddr.s_addr;
   req.ip_dst_mask_len =
    inet_mask_len(l3_mask->ipv4.daddr.s_addr);
   req.ip_src[0] = l3_key->ipv4.saddr.s_addr;
   req.ip_src_mask_len =
    inet_mask_len(l3_mask->ipv4.saddr.s_addr);
  } else if (flow->flags & BNXT_TC_FLOW_FLAGS_IPV6_ADDRS) {
   memcpy(req.ip_dst, l3_key->ipv6.daddr.s6_addr32,
          sizeof(req.ip_dst));
   req.ip_dst_mask_len =
     ipv6_mask_len(&l3_mask->ipv6.daddr);
   memcpy(req.ip_src, l3_key->ipv6.saddr.s6_addr32,
          sizeof(req.ip_src));
   req.ip_src_mask_len =
     ipv6_mask_len(&l3_mask->ipv6.saddr);
  }
 }

 if (flow->flags & BNXT_TC_FLOW_FLAGS_PORTS) {
  req.l4_src_port = flow->l4_key.ports.sport;
  req.l4_src_port_mask = flow->l4_mask.ports.sport;
  req.l4_dst_port = flow->l4_key.ports.dport;
  req.l4_dst_port_mask = flow->l4_mask.ports.dport;
 } else if (flow->flags & BNXT_TC_FLOW_FLAGS_ICMP) {

  req.l4_src_port = htons(flow->l4_key.icmp.type);
  req.l4_src_port_mask = htons(flow->l4_mask.icmp.type);
  req.l4_dst_port = htons(flow->l4_key.icmp.code);
  req.l4_dst_port_mask = htons(flow->l4_mask.icmp.code);
 }
 req.flags = cpu_to_le16(flow_flags);

 if (actions->flags & BNXT_TC_ACTION_FLAG_DROP) {
  action_flags |= CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_DROP;
 } else {
  if (actions->flags & BNXT_TC_ACTION_FLAG_FWD) {
   action_flags |= CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_FWD;
   req.dst_fid = cpu_to_le16(actions->dst_fid);
  }
  if (actions->flags & BNXT_TC_ACTION_FLAG_PUSH_VLAN) {
   action_flags |=
       CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_L2_HEADER_REWRITE;
   req.l2_rewrite_vlan_tpid = actions->push_vlan_tpid;
   req.l2_rewrite_vlan_tci = actions->push_vlan_tci;
   memcpy(&req.l2_rewrite_dmac, &req.dmac, ETH_ALEN);
   memcpy(&req.l2_rewrite_smac, &req.smac, ETH_ALEN);
  }
  if (actions->flags & BNXT_TC_ACTION_FLAG_POP_VLAN) {
   action_flags |=
       CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_L2_HEADER_REWRITE;

   req.l2_rewrite_vlan_tpid = 0;
   memcpy(&req.l2_rewrite_dmac, &req.dmac, ETH_ALEN);
   memcpy(&req.l2_rewrite_smac, &req.smac, ETH_ALEN);
  }
 }
 req.action_flags = cpu_to_le16(action_flags);

 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (!rc) {
  resp = bnxt_get_hwrm_resp_addr(bp, &req);
  flow_node->flow_handle = resp->flow_handle;
  if (bp->fw_cap & BNXT_FW_CAP_OVS_64BIT_HANDLE) {
   flow_node->ext_flow_handle = resp->ext_flow_handle;
   flow_node->flow_id = resp->flow_id;
  }
 }
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
