
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgs8gl5_state {int dummy; } ;
struct dvb_frontend {struct lgs8gl5_state* demodulator_priv; } ;
struct dtv_frontend_properties {int bandwidth_hz; int hierarchy; int modulation; int transmission_mode; int guard_interval; int code_rate_LP; int code_rate_HP; int inversion; } ;


 int FEC_1_2 ;
 int FEC_7_8 ;
 int GUARD_INTERVAL_1_32 ;
 int HIERARCHY_NONE ;
 int INVERSION_OFF ;
 int INVERSION_ON ;
 int QAM_64 ;
 int REG_INVERSION ;
 int REG_INVERSION_ON ;
 int TRANSMISSION_MODE_2K ;
 int lgs8gl5_read_reg (struct lgs8gl5_state*,int ) ;

__attribute__((used)) static int
lgs8gl5_get_frontend(struct dvb_frontend *fe,
       struct dtv_frontend_properties *p)
{
 struct lgs8gl5_state *state = fe->demodulator_priv;

 u8 inv = lgs8gl5_read_reg(state, REG_INVERSION);

 p->inversion = (inv & REG_INVERSION_ON) ? INVERSION_ON : INVERSION_OFF;

 p->code_rate_HP = FEC_1_2;
 p->code_rate_LP = FEC_7_8;
 p->guard_interval = GUARD_INTERVAL_1_32;
 p->transmission_mode = TRANSMISSION_MODE_2K;
 p->modulation = QAM_64;
 p->hierarchy = HIERARCHY_NONE;
 p->bandwidth_hz = 8000000;

 return 0;
}
