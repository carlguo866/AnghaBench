
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int unchar ;
typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {struct sk_buff* next; } ;
struct link {TYPE_2__* owner; TYPE_1__* b_ptr; struct sk_buff* first_out; int peer_bearer_id; int addr; int out_queue_size; } ;
struct TYPE_4__ {struct link** active_links; int permit_changeover; } ;
struct TYPE_3__ {int net_plane; } ;


 int CHANGEOVER_PROTOCOL ;
 int INT_H_SIZE ;
 scalar_t__ MSG_BUNDLER ;
 int ORIGINAL_MSG ;
 int align (int ) ;
 struct sk_buff* buf_acquire (int ) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int dbg (char*,int ,...) ;
 int msg_dbg (struct tipc_msg*,char*) ;
 struct tipc_msg* msg_get_wrapped (struct tipc_msg*) ;
 int msg_init (struct tipc_msg*,int ,int ,int ,int ) ;
 int msg_link_selector (struct tipc_msg*) ;
 int msg_msgcnt (struct tipc_msg*) ;
 int msg_seqno (struct tipc_msg*) ;
 int msg_set_bearer_id (struct tipc_msg*,int ) ;
 int msg_set_msgcnt (struct tipc_msg*,int ) ;
 int msg_set_seqno (struct tipc_msg*,int ) ;
 int msg_set_size (struct tipc_msg*,int ) ;
 int msg_size (struct tipc_msg*) ;
 scalar_t__ msg_user (struct tipc_msg*) ;
 int skb_copy_to_linear_data (struct sk_buff*,struct tipc_msg*,int ) ;
 int tipc_link_send_buf (struct link*,struct sk_buff*) ;
 int tipc_link_tunnel (struct link*,struct tipc_msg*,struct tipc_msg*,int ) ;
 int warn (char*) ;

void tipc_link_changeover(struct link *l_ptr)
{
 u32 msgcount = l_ptr->out_queue_size;
 struct sk_buff *crs = l_ptr->first_out;
 struct link *tunnel = l_ptr->owner->active_links[0];
 struct tipc_msg tunnel_hdr;
 int split_bundles;

 if (!tunnel)
  return;

 if (!l_ptr->owner->permit_changeover) {
  warn("Link changeover error, "
       "peer did not permit changeover\n");
  return;
 }

 msg_init(&tunnel_hdr, CHANGEOVER_PROTOCOL,
   ORIGINAL_MSG, INT_H_SIZE, l_ptr->addr);
 msg_set_bearer_id(&tunnel_hdr, l_ptr->peer_bearer_id);
 msg_set_msgcnt(&tunnel_hdr, msgcount);
 dbg("Link changeover requires %u tunnel messages\n", msgcount);

 if (!l_ptr->first_out) {
  struct sk_buff *buf;

  buf = buf_acquire(INT_H_SIZE);
  if (buf) {
   skb_copy_to_linear_data(buf, &tunnel_hdr, INT_H_SIZE);
   msg_set_size(&tunnel_hdr, INT_H_SIZE);
   dbg("%c->%c:", l_ptr->b_ptr->net_plane,
       tunnel->b_ptr->net_plane);
   msg_dbg(&tunnel_hdr, "EMPTY>SEND>");
   tipc_link_send_buf(tunnel, buf);
  } else {
   warn("Link changeover error, "
        "unable to send changeover msg\n");
  }
  return;
 }

 split_bundles = (l_ptr->owner->active_links[0] !=
    l_ptr->owner->active_links[1]);

 while (crs) {
  struct tipc_msg *msg = buf_msg(crs);

  if ((msg_user(msg) == MSG_BUNDLER) && split_bundles) {
   struct tipc_msg *m = msg_get_wrapped(msg);
   unchar* pos = (unchar*)m;

   msgcount = msg_msgcnt(msg);
   while (msgcount--) {
    msg_set_seqno(m,msg_seqno(msg));
    tipc_link_tunnel(l_ptr, &tunnel_hdr, m,
       msg_link_selector(m));
    pos += align(msg_size(m));
    m = (struct tipc_msg *)pos;
   }
  } else {
   tipc_link_tunnel(l_ptr, &tunnel_hdr, msg,
      msg_link_selector(msg));
  }
  crs = crs->next;
 }
}
