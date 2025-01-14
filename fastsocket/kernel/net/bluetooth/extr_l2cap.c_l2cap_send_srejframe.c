
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct srej_list {int list; int tx_seq; } ;
struct sock {int dummy; } ;
struct l2cap_pinfo {int expected_tx_seq; int conn_state; } ;


 int GFP_ATOMIC ;
 int L2CAP_CONN_SEND_PBIT ;
 int L2CAP_CTRL_POLL ;
 int L2CAP_CTRL_REQSEQ_SHIFT ;
 int L2CAP_SUPER_SELECT_REJECT ;
 int SREJ_LIST (struct sock*) ;
 struct srej_list* kzalloc (int,int ) ;
 struct l2cap_pinfo* l2cap_pi (struct sock*) ;
 int l2cap_send_sframe (struct l2cap_pinfo*,int) ;
 int list_add_tail (int *,int ) ;

__attribute__((used)) static void l2cap_send_srejframe(struct sock *sk, u8 tx_seq)
{
 struct l2cap_pinfo *pi = l2cap_pi(sk);
 struct srej_list *new;
 u16 control;

 while (tx_seq != pi->expected_tx_seq) {
  control = L2CAP_SUPER_SELECT_REJECT;
  control |= pi->expected_tx_seq << L2CAP_CTRL_REQSEQ_SHIFT;
  if (pi->conn_state & L2CAP_CONN_SEND_PBIT) {
   control |= L2CAP_CTRL_POLL;
   pi->conn_state &= ~L2CAP_CONN_SEND_PBIT;
  }
  l2cap_send_sframe(pi, control);

  new = kzalloc(sizeof(struct srej_list), GFP_ATOMIC);
  new->tx_seq = pi->expected_tx_seq++;
  list_add_tail(&new->list, SREJ_LIST(sk));
 }
 pi->expected_tx_seq++;
}
