
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcphdr {int window; int seq; } ;
struct sk_buff {int len; } ;
struct TYPE_3__ {size_t state; int last_index; struct ip_ct_tcp_state* seen; } ;
struct TYPE_4__ {TYPE_1__ tcp; } ;
struct nf_conn {TYPE_2__ proto; } ;
struct ip_ct_tcp_state {int td_end; int td_maxwin; int td_maxend; int flags; scalar_t__ td_scale; } ;
typedef enum tcp_conntrack { ____Placeholder_tcp_conntrack } tcp_conntrack ;
typedef int _tcph ;


 int BUG_ON (int ) ;
 int IP_CT_TCP_FLAG_BE_LIBERAL ;
 int IP_CT_TCP_FLAG_SACK_PERM ;
 int TCP_CONNTRACK_MAX ;
 size_t TCP_CONNTRACK_NONE ;
 int TCP_CONNTRACK_SYN_SENT ;
 int TCP_NONE_SET ;
 size_t get_conntrack_index (struct tcphdr const*) ;
 scalar_t__ nf_ct_tcp_loose ;
 int ntohl (int ) ;
 void* ntohs (int ) ;
 int pr_debug (char*,...) ;
 void* segment_seq_plus_len (int ,int ,unsigned int,struct tcphdr const*) ;
 struct tcphdr* skb_header_pointer (struct sk_buff const*,unsigned int,int,struct tcphdr*) ;
 int*** tcp_conntracks ;
 int tcp_options (struct sk_buff const*,unsigned int,struct tcphdr const*,struct ip_ct_tcp_state*) ;

__attribute__((used)) static bool tcp_new(struct nf_conn *ct, const struct sk_buff *skb,
      unsigned int dataoff)
{
 enum tcp_conntrack new_state;
 const struct tcphdr *th;
 struct tcphdr _tcph;
 const struct ip_ct_tcp_state *sender = &ct->proto.tcp.seen[0];
 const struct ip_ct_tcp_state *receiver = &ct->proto.tcp.seen[1];

 th = skb_header_pointer(skb, dataoff, sizeof(_tcph), &_tcph);
 BUG_ON(th == ((void*)0));


 new_state
  = tcp_conntracks[0][get_conntrack_index(th)]
  [TCP_CONNTRACK_NONE];


 if (new_state >= TCP_CONNTRACK_MAX) {
  pr_debug("nf_ct_tcp: invalid new deleting.\n");
  return 0;
 }

 if (new_state == TCP_CONNTRACK_SYN_SENT) {

  ct->proto.tcp.seen[0].td_end =
   segment_seq_plus_len(ntohl(th->seq), skb->len,
          dataoff, th);
  ct->proto.tcp.seen[0].td_maxwin = ntohs(th->window);
  if (ct->proto.tcp.seen[0].td_maxwin == 0)
   ct->proto.tcp.seen[0].td_maxwin = 1;
  ct->proto.tcp.seen[0].td_maxend =
   ct->proto.tcp.seen[0].td_end;

  tcp_options(skb, dataoff, th, &ct->proto.tcp.seen[0]);
  ct->proto.tcp.seen[1].flags = 0;
 } else if (nf_ct_tcp_loose == 0) {

  return 0;
 } else {





  ct->proto.tcp.seen[0].td_end =
   segment_seq_plus_len(ntohl(th->seq), skb->len,
          dataoff, th);
  ct->proto.tcp.seen[0].td_maxwin = ntohs(th->window);
  if (ct->proto.tcp.seen[0].td_maxwin == 0)
   ct->proto.tcp.seen[0].td_maxwin = 1;
  ct->proto.tcp.seen[0].td_maxend =
   ct->proto.tcp.seen[0].td_end +
   ct->proto.tcp.seen[0].td_maxwin;
  ct->proto.tcp.seen[0].td_scale = 0;



  ct->proto.tcp.seen[0].flags =
  ct->proto.tcp.seen[1].flags = IP_CT_TCP_FLAG_SACK_PERM |
           IP_CT_TCP_FLAG_BE_LIBERAL;
 }

 ct->proto.tcp.seen[1].td_end = 0;
 ct->proto.tcp.seen[1].td_maxend = 0;
 ct->proto.tcp.seen[1].td_maxwin = 0;
 ct->proto.tcp.seen[1].td_scale = 0;


 ct->proto.tcp.state = TCP_CONNTRACK_NONE;
 ct->proto.tcp.last_index = TCP_NONE_SET;

 pr_debug("tcp_new: sender end=%u maxend=%u maxwin=%u scale=%i "
   "receiver end=%u maxend=%u maxwin=%u scale=%i\n",
   sender->td_end, sender->td_maxend, sender->td_maxwin,
   sender->td_scale,
   receiver->td_end, receiver->td_maxend, receiver->td_maxwin,
   receiver->td_scale);
 return 1;
}
