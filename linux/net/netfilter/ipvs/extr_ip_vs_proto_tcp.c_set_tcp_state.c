
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcphdr {scalar_t__ rst; scalar_t__ ack; scalar_t__ fin; scalar_t__ syn; } ;
struct ip_vs_proto_data {int * timeout_table; TYPE_2__* pp; TYPE_1__* tcp_state_table; } ;
struct ip_vs_dest {int inactconns; int activeconns; } ;
struct ip_vs_conn {int flags; size_t state; int timeout; int refcnt; int cport; int caddr; int af; int dport; int daddr; int daf; struct ip_vs_dest* dest; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int* next_state; } ;


 int IP_VS_CONN_F_INACTIVE ;
 int IP_VS_CONN_F_NOOUTPUT ;
 int IP_VS_DBG (int,char*,int) ;
 int IP_VS_DBG_ADDR (int ,int *) ;
 int IP_VS_DBG_BUF (int,char*,int ,char*,char,float,char,char,int ,int ,int ,int ,int ,int ,int ) ;
 int IP_VS_TCP_S_CLOSE ;
 int IP_VS_TCP_S_ESTABLISHED ;
 int TCP_DIR_INPUT_ONLY ;
 int TCP_DIR_OUTPUT ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int ip_vs_control_assure_ct (struct ip_vs_conn*) ;
 scalar_t__ likely (struct ip_vs_proto_data*) ;
 int ntohs (int ) ;
 int refcount_read (int *) ;
 scalar_t__ tcp_state_active (int) ;
 int tcp_state_idx (struct tcphdr*) ;
 int tcp_state_name (int) ;
 int* tcp_state_off ;
 int * tcp_timeouts ;

__attribute__((used)) static inline void
set_tcp_state(struct ip_vs_proto_data *pd, struct ip_vs_conn *cp,
       int direction, struct tcphdr *th)
{
 int state_idx;
 int new_state = IP_VS_TCP_S_CLOSE;
 int state_off = tcp_state_off[direction];





 if (cp->flags & IP_VS_CONN_F_NOOUTPUT) {
  if (state_off == TCP_DIR_OUTPUT)
   cp->flags &= ~IP_VS_CONN_F_NOOUTPUT;
  else
   state_off = TCP_DIR_INPUT_ONLY;
 }

 if ((state_idx = tcp_state_idx(th)) < 0) {
  IP_VS_DBG(8, "tcp_state_idx=%d!!!\n", state_idx);
  goto tcp_state_out;
 }

 new_state =
  pd->tcp_state_table[state_off+state_idx].next_state[cp->state];

  tcp_state_out:
 if (new_state != cp->state) {
  struct ip_vs_dest *dest = cp->dest;

  IP_VS_DBG_BUF(8, "%s %s [%c%c%c%c] %s:%d->"
         "%s:%d state: %s->%s conn->refcnt:%d\n",
         pd->pp->name,
         ((state_off == TCP_DIR_OUTPUT) ?
          "output " : "input "),
         th->syn ? 'S' : '.',
         th->fin ? 'F' : '.',
         th->ack ? 'A' : '.',
         th->rst ? 'R' : '.',
         IP_VS_DBG_ADDR(cp->daf, &cp->daddr),
         ntohs(cp->dport),
         IP_VS_DBG_ADDR(cp->af, &cp->caddr),
         ntohs(cp->cport),
         tcp_state_name(cp->state),
         tcp_state_name(new_state),
         refcount_read(&cp->refcnt));

  if (dest) {
   if (!(cp->flags & IP_VS_CONN_F_INACTIVE) &&
       !tcp_state_active(new_state)) {
    atomic_dec(&dest->activeconns);
    atomic_inc(&dest->inactconns);
    cp->flags |= IP_VS_CONN_F_INACTIVE;
   } else if ((cp->flags & IP_VS_CONN_F_INACTIVE) &&
       tcp_state_active(new_state)) {
    atomic_inc(&dest->activeconns);
    atomic_dec(&dest->inactconns);
    cp->flags &= ~IP_VS_CONN_F_INACTIVE;
   }
  }
  if (new_state == IP_VS_TCP_S_ESTABLISHED)
   ip_vs_control_assure_ct(cp);
 }

 if (likely(pd))
  cp->timeout = pd->timeout_table[cp->state = new_state];
 else
  cp->timeout = tcp_timeouts[cp->state = new_state];
}
