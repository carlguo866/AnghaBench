
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {size_t max_queue_sz; int sent_bundles; int bearer_congs; } ;
struct link {size_t out_queue_size; size_t* queue_limit; int b_ptr; struct sk_buff* next_out; TYPE_1__ stats; int addr; struct sk_buff* last_out; scalar_t__ unacked_window; int media_addr; int name; } ;


 scalar_t__ CHANGEOVER_PROTOCOL ;
 size_t CONN_MANAGER ;
 int INT_H_SIZE ;
 int MSG_BUNDLER ;
 scalar_t__ MSG_FRAGMENTER ;
 int OPEN_MSG ;
 size_t TIPC_CRITICAL_IMPORTANCE ;
 struct sk_buff* buf_acquire (size_t) ;
 int buf_discard (struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int link_add_to_outqueue (struct link*,struct sk_buff*,struct tipc_msg*) ;
 scalar_t__ link_bundle_buf (struct link*,struct sk_buff*,struct sk_buff*) ;
 int link_congested (struct link*) ;
 size_t link_max_pkt (struct link*) ;
 int link_schedule_port (struct link*,int ,size_t) ;
 size_t msg_data_sz (struct tipc_msg*) ;
 int msg_dbg (struct tipc_msg*,char*) ;
 int msg_init (struct tipc_msg*,int ,int ,int ,int ) ;
 int msg_origport (struct tipc_msg*) ;
 int msg_set_prevnode (struct tipc_msg*,int ) ;
 size_t msg_size (struct tipc_msg*) ;
 size_t msg_tot_importance (struct tipc_msg*) ;
 scalar_t__ msg_user (struct tipc_msg*) ;
 int skb_copy_to_linear_data (struct sk_buff*,struct tipc_msg*,int ) ;
 int skb_trim (struct sk_buff*,int ) ;
 int tipc_bearer_congested (int ,struct link*) ;
 int tipc_bearer_resolve_congestion (int ,struct link*) ;
 int tipc_bearer_schedule (int ,struct link*) ;
 int tipc_bearer_send (int ,struct sk_buff*,int *) ;
 int tipc_link_reset (struct link*) ;
 int tipc_link_send_long_buf (struct link*,struct sk_buff*) ;
 int tipc_own_addr ;
 scalar_t__ unlikely (int) ;
 int warn (char*,int ) ;

int tipc_link_send_buf(struct link *l_ptr, struct sk_buff *buf)
{
 struct tipc_msg *msg = buf_msg(buf);
 u32 size = msg_size(msg);
 u32 dsz = msg_data_sz(msg);
 u32 queue_size = l_ptr->out_queue_size;
 u32 imp = msg_tot_importance(msg);
 u32 queue_limit = l_ptr->queue_limit[imp];
 u32 max_packet = link_max_pkt(l_ptr);

 msg_set_prevnode(msg, tipc_own_addr);



 if (unlikely(queue_size >= queue_limit)) {
  if (imp <= TIPC_CRITICAL_IMPORTANCE) {
   return link_schedule_port(l_ptr, msg_origport(msg),
        size);
  }
  msg_dbg(msg, "TIPC: Congestion, throwing away\n");
  buf_discard(buf);
  if (imp > CONN_MANAGER) {
   warn("Resetting link <%s>, send queue full", l_ptr->name);
   tipc_link_reset(l_ptr);
  }
  return dsz;
 }



 if (size > max_packet)
  return tipc_link_send_long_buf(l_ptr, buf);



 if (queue_size > l_ptr->stats.max_queue_sz)
  l_ptr->stats.max_queue_sz = queue_size;

 if (likely(!tipc_bearer_congested(l_ptr->b_ptr, l_ptr) &&
     !link_congested(l_ptr))) {
  link_add_to_outqueue(l_ptr, buf, msg);

  if (likely(tipc_bearer_send(l_ptr->b_ptr, buf, &l_ptr->media_addr))) {
   l_ptr->unacked_window = 0;
  } else {
   tipc_bearer_schedule(l_ptr->b_ptr, l_ptr);
   l_ptr->stats.bearer_congs++;
   l_ptr->next_out = buf;
  }
  return dsz;
 }


 if ((msg_user(msg) != CHANGEOVER_PROTOCOL) &&
     (msg_user(msg) != MSG_FRAGMENTER)) {



  if (l_ptr->next_out &&
      link_bundle_buf(l_ptr, l_ptr->last_out, buf)) {
   tipc_bearer_resolve_congestion(l_ptr->b_ptr, l_ptr);
   return dsz;
  }



  if (size <= max_packet * 2 / 3) {
   struct sk_buff *bundler = buf_acquire(max_packet);
   struct tipc_msg bundler_hdr;

   if (bundler) {
    msg_init(&bundler_hdr, MSG_BUNDLER, OPEN_MSG,
      INT_H_SIZE, l_ptr->addr);
    skb_copy_to_linear_data(bundler, &bundler_hdr,
       INT_H_SIZE);
    skb_trim(bundler, INT_H_SIZE);
    link_bundle_buf(l_ptr, bundler, buf);
    buf = bundler;
    msg = buf_msg(buf);
    l_ptr->stats.sent_bundles++;
   }
  }
 }
 if (!l_ptr->next_out)
  l_ptr->next_out = buf;
 link_add_to_outqueue(l_ptr, buf, msg);
 tipc_bearer_resolve_congestion(l_ptr->b_ptr, l_ptr);
 return dsz;
}
