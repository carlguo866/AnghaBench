
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lgdt3306a_state {int dummy; } ;
struct dvb_frontend {struct lgdt3306a_state* demodulator_priv; } ;


 int dbg_info (char*,int) ;
 int read_reg (struct lgdt3306a_state*,int) ;

__attribute__((used)) static int lgdt3306a_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 struct lgdt3306a_state *state = fe->demodulator_priv;
 u32 tmp;

 *ber = 0;



 tmp = read_reg(state, 0x00fc);
 tmp = (tmp << 8) | read_reg(state, 0x00fd);
 tmp = (tmp << 8) | read_reg(state, 0x00fe);
 tmp = (tmp << 8) | read_reg(state, 0x00ff);
 *ber = tmp;
 dbg_info("ber=%u\n", tmp);

 return 0;
}
