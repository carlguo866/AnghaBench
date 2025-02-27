
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tda8083_state {int dummy; } ;
struct dvb_frontend {struct tda8083_state* demodulator_priv; } ;
typedef int buf ;


 int tda8083_readregs (struct tda8083_state*,int,int*,int) ;

__attribute__((used)) static int tda8083_read_ber(struct dvb_frontend* fe, u32* ber)
{
 struct tda8083_state* state = fe->demodulator_priv;
 int ret;
 u8 buf[3];

 if ((ret = tda8083_readregs(state, 0x0b, buf, sizeof(buf))))
  return ret;

 *ber = ((buf[0] & 0x1f) << 16) | (buf[1] << 8) | buf[2];

 return 0;
}
