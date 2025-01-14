
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags; } ;
struct inpcb {int inp_flags; struct socket* inp_socket; } ;


 int INP_FLOW_CONTROLLED ;
 int INP_FLOW_SUSPENDED ;
 scalar_t__ INP_IS_FLOW_SUSPENDED (struct inpcb*) ;
 scalar_t__ INP_WAIT_FOR_IF_FEEDBACK (struct inpcb*) ;
 int SOF_SUSPENDED ;
 int SO_FILT_HINT_LOCKED ;
 int SO_FILT_HINT_RESUME ;
 int soevent (struct socket*,int) ;
 int sowwakeup (struct socket*) ;

void
inp_reset_fc_state(struct inpcb *inp)
{
 struct socket *so = inp->inp_socket;
 int suspended = (INP_IS_FLOW_SUSPENDED(inp)) ? 1 : 0;
 int needwakeup = (INP_WAIT_FOR_IF_FEEDBACK(inp)) ? 1 : 0;

 inp->inp_flags &= ~(INP_FLOW_CONTROLLED | INP_FLOW_SUSPENDED);

 if (suspended) {
  so->so_flags &= ~(SOF_SUSPENDED);
  soevent(so, (SO_FILT_HINT_LOCKED | SO_FILT_HINT_RESUME));
 }


 if (needwakeup)
  sowwakeup(so);
}
