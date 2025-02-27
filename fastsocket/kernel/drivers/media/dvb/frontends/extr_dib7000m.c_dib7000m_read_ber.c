
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct dib7000m_state* demodulator_priv; } ;
struct dib7000m_state {int dummy; } ;


 int dib7000m_read_word (struct dib7000m_state*,int) ;

__attribute__((used)) static int dib7000m_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 struct dib7000m_state *state = fe->demodulator_priv;
 *ber = (dib7000m_read_word(state, 526) << 16) | dib7000m_read_word(state, 527);
 return 0;
}
