
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_connection {int i_ack_flags; } ;


 int IB_ACK_IN_FLIGHT ;
 int IB_ACK_REQUESTED ;
 int RDS_MAX_ADV_CREDIT ;
 int clear_bit (int ,int *) ;
 int rds_ib_send_ack (struct rds_ib_connection*,unsigned int) ;
 int rds_ib_send_grab_credits (struct rds_ib_connection*,int,unsigned int*,int ,int ) ;
 int rds_ib_stats_inc (int ) ;
 int s_ib_ack_send_delayed ;
 int s_ib_tx_throttle ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void rds_ib_attempt_ack(struct rds_ib_connection *ic)
{
 unsigned int adv_credits;

 if (!test_bit(IB_ACK_REQUESTED, &ic->i_ack_flags))
  return;

 if (test_and_set_bit(IB_ACK_IN_FLIGHT, &ic->i_ack_flags)) {
  rds_ib_stats_inc(s_ib_ack_send_delayed);
  return;
 }


 if (!rds_ib_send_grab_credits(ic, 1, &adv_credits, 0, RDS_MAX_ADV_CREDIT)) {
  rds_ib_stats_inc(s_ib_tx_throttle);
  clear_bit(IB_ACK_IN_FLIGHT, &ic->i_ack_flags);
  return;
 }

 clear_bit(IB_ACK_REQUESTED, &ic->i_ack_flags);
 rds_ib_send_ack(ic, adv_credits);
}
