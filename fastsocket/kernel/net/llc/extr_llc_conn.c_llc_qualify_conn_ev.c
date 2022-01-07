
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {int state; } ;
struct llc_conn_state_trans {int (* ev_qualifiers ) (struct sock*,struct sk_buff*) ;int (* ev ) (struct sock*,struct sk_buff*) ;} ;
struct llc_conn_state_ev {int type; } ;
struct llc_conn_state {struct llc_conn_state_trans** transitions; } ;
typedef int (* llc_conn_ev_qfyr_t ) (struct sock*,struct sk_buff*) ;


 struct llc_conn_state_ev* llc_conn_ev (struct sk_buff*) ;
 struct llc_conn_state* llc_conn_state_table ;
 int llc_find_offset (int,int ) ;
 struct llc_sock* llc_sk (struct sock*) ;
 int stub1 (struct sock*,struct sk_buff*) ;
 int stub2 (struct sock*,struct sk_buff*) ;

__attribute__((used)) static struct llc_conn_state_trans *llc_qualify_conn_ev(struct sock *sk,
       struct sk_buff *skb)
{
 struct llc_conn_state_trans **next_trans;
 llc_conn_ev_qfyr_t *next_qualifier;
 struct llc_conn_state_ev *ev = llc_conn_ev(skb);
 struct llc_sock *llc = llc_sk(sk);
 struct llc_conn_state *curr_state =
     &llc_conn_state_table[llc->state - 1];




 for (next_trans = curr_state->transitions +
  llc_find_offset(llc->state - 1, ev->type);
      (*next_trans)->ev; next_trans++) {
  if (!((*next_trans)->ev)(sk, skb)) {






   for (next_qualifier = (*next_trans)->ev_qualifiers;
        next_qualifier && *next_qualifier &&
        !(*next_qualifier)(sk, skb); next_qualifier++)
                 ;
   if (!next_qualifier || !*next_qualifier)




    return *next_trans;
  }
 }
 return ((void*)0);
}
