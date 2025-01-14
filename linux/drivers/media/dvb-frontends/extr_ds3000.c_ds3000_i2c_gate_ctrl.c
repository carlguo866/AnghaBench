
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct ds3000_state* demodulator_priv; } ;
struct ds3000_state {int dummy; } ;


 int ds3000_writereg (struct ds3000_state*,int,int) ;

__attribute__((used)) static int ds3000_i2c_gate_ctrl(struct dvb_frontend *fe, int enable)
{
 struct ds3000_state *state = fe->demodulator_priv;

 if (enable)
  ds3000_writereg(state, 0x03, 0x12);
 else
  ds3000_writereg(state, 0x03, 0x02);

 return 0;
}
