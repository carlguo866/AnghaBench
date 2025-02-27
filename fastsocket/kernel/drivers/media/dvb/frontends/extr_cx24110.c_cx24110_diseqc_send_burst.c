
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int dummy; } ;
typedef scalar_t__ fe_sec_mini_cmd_t ;


 int EINVAL ;
 scalar_t__ SEC_MINI_A ;
 scalar_t__ SEC_MINI_B ;
 int cx24110_readreg (struct cx24110_state*,int) ;
 int cx24110_writereg (struct cx24110_state*,int,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int cx24110_diseqc_send_burst(struct dvb_frontend* fe, fe_sec_mini_cmd_t burst)
{
 int rv, bit;
 struct cx24110_state *state = fe->demodulator_priv;
 unsigned long timeout;

 if (burst == SEC_MINI_A)
  bit = 0x00;
 else if (burst == SEC_MINI_B)
  bit = 0x08;
 else
  return -EINVAL;

 rv = cx24110_readreg(state, 0x77);
 if (!(rv & 0x04))
  cx24110_writereg(state, 0x77, rv | 0x04);

 rv = cx24110_readreg(state, 0x76);
 cx24110_writereg(state, 0x76, ((rv & 0x90) | 0x40 | bit));
 timeout = jiffies + msecs_to_jiffies(100);
 while (!time_after(jiffies, timeout) && !(cx24110_readreg(state, 0x76) & 0x40))
  ;

 return 0;
}
