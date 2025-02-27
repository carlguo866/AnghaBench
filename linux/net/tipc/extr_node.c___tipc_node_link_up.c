
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_node {int* active_links; int net; int action_flags; int addr; TYPE_1__* links; int link_id; int working_links; } ;
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct TYPE_2__ {scalar_t__ mtu; struct tipc_link* link; } ;


 scalar_t__ INT_H_SIZE ;
 int LINK_ESTABLISH_EVT ;
 int SELF_ESTABL_CONTACT_EVT ;
 int SYNCH_MSG ;
 int TIPC_NOTIFY_LINK_UP ;
 int TIPC_NOTIFY_NODE_UP ;
 struct tipc_link* node_active_link (struct tipc_node*,int ) ;
 int pr_debug (char*,int ,...) ;
 int tipc_bcast_add_peer (int ,struct tipc_link*,struct sk_buff_head*) ;
 int tipc_bcast_inc_bearer_dst_cnt (int ,int) ;
 int tipc_bearer_add_dest (int ,int,int ) ;
 int tipc_link_build_state_msg (struct tipc_link*,struct sk_buff_head*) ;
 int tipc_link_fsm_evt (struct tipc_link*,int ) ;
 int tipc_link_id (struct tipc_link*) ;
 scalar_t__ tipc_link_is_up (struct tipc_link*) ;
 scalar_t__ tipc_link_mtu (struct tipc_link*) ;
 int tipc_link_name (struct tipc_link*) ;
 int tipc_link_plane (struct tipc_link*) ;
 scalar_t__ tipc_link_prio (struct tipc_link*) ;
 int tipc_link_set_active (struct tipc_link*,int) ;
 int tipc_link_tnl_prepare (struct tipc_link*,struct tipc_link*,int ,struct sk_buff_head*) ;
 int tipc_node_fsm_evt (struct tipc_node*,int ) ;
 int trace_tipc_node_link_up (struct tipc_node*,int,char*) ;

__attribute__((used)) static void __tipc_node_link_up(struct tipc_node *n, int bearer_id,
    struct sk_buff_head *xmitq)
{
 int *slot0 = &n->active_links[0];
 int *slot1 = &n->active_links[1];
 struct tipc_link *ol = node_active_link(n, 0);
 struct tipc_link *nl = n->links[bearer_id].link;

 if (!nl || tipc_link_is_up(nl))
  return;

 tipc_link_fsm_evt(nl, LINK_ESTABLISH_EVT);
 if (!tipc_link_is_up(nl))
  return;

 n->working_links++;
 n->action_flags |= TIPC_NOTIFY_LINK_UP;
 n->link_id = tipc_link_id(nl);


 n->links[bearer_id].mtu = tipc_link_mtu(nl) - INT_H_SIZE;

 tipc_bearer_add_dest(n->net, bearer_id, n->addr);
 tipc_bcast_inc_bearer_dst_cnt(n->net, bearer_id);

 pr_debug("Established link <%s> on network plane %c\n",
   tipc_link_name(nl), tipc_link_plane(nl));
 trace_tipc_node_link_up(n, 1, " ");


 tipc_link_build_state_msg(nl, xmitq);


 if (!ol) {
  *slot0 = bearer_id;
  *slot1 = bearer_id;
  tipc_node_fsm_evt(n, SELF_ESTABL_CONTACT_EVT);
  n->action_flags |= TIPC_NOTIFY_NODE_UP;
  tipc_link_set_active(nl, 1);
  tipc_bcast_add_peer(n->net, nl, xmitq);
  return;
 }


 if (tipc_link_prio(nl) > tipc_link_prio(ol)) {
  pr_debug("Old link <%s> becomes standby\n", tipc_link_name(ol));
  *slot0 = bearer_id;
  *slot1 = bearer_id;
  tipc_link_set_active(nl, 1);
  tipc_link_set_active(ol, 0);
 } else if (tipc_link_prio(nl) == tipc_link_prio(ol)) {
  tipc_link_set_active(nl, 1);
  *slot1 = bearer_id;
 } else {
  pr_debug("New link <%s> is standby\n", tipc_link_name(nl));
 }


 tipc_link_tnl_prepare(ol, nl, SYNCH_MSG, xmitq);
}
