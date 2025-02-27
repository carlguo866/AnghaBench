
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib7000m_state* demodulator_priv; } ;
struct dib7000m_state {int dummy; } ;
typedef int fe_status_t ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int dib7000m_read_word (struct dib7000m_state*,int) ;

__attribute__((used)) static int dib7000m_read_status(struct dvb_frontend *fe, fe_status_t *stat)
{
 struct dib7000m_state *state = fe->demodulator_priv;
 u16 lock = dib7000m_read_word(state, 535);

 *stat = 0;

 if (lock & 0x8000)
  *stat |= FE_HAS_SIGNAL;
 if (lock & 0x3000)
  *stat |= FE_HAS_CARRIER;
 if (lock & 0x0100)
  *stat |= FE_HAS_VITERBI;
 if (lock & 0x0010)
  *stat |= FE_HAS_SYNC;
 if (lock & 0x0008)
  *stat |= FE_HAS_LOCK;

 return 0;
}
