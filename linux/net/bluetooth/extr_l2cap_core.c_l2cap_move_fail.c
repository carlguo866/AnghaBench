
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {scalar_t__ move_role; int local_amp_id; int move_id; } ;


 int L2CAP_MC_UNCONFIRMED ;
 scalar_t__ L2CAP_MOVE_ROLE_INITIATOR ;
 scalar_t__ L2CAP_MOVE_ROLE_RESPONDER ;
 scalar_t__ L2CAP_MR_COLLISION ;
 int __clear_chan_timer (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 struct l2cap_chan* l2cap_get_chan_by_ident (struct l2cap_conn*,int ) ;
 int l2cap_move_done (struct l2cap_chan*) ;
 int l2cap_send_move_chan_cfm (struct l2cap_chan*,int ) ;
 int l2cap_send_move_chan_cfm_icid (struct l2cap_conn*,scalar_t__) ;

__attribute__((used)) static void l2cap_move_fail(struct l2cap_conn *conn, u8 ident, u16 icid,
       u16 result)
{
 struct l2cap_chan *chan;

 chan = l2cap_get_chan_by_ident(conn, ident);
 if (!chan) {

  l2cap_send_move_chan_cfm_icid(conn, icid);
  return;
 }

 __clear_chan_timer(chan);

 if (chan->move_role == L2CAP_MOVE_ROLE_INITIATOR) {
  if (result == L2CAP_MR_COLLISION) {
   chan->move_role = L2CAP_MOVE_ROLE_RESPONDER;
  } else {

   chan->move_id = chan->local_amp_id;
   l2cap_move_done(chan);
  }
 }

 l2cap_send_move_chan_cfm(chan, L2CAP_MC_UNCONFIRMED);

 l2cap_chan_unlock(chan);
}
