
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dtv_frontend_properties {int transmission_mode; int guard_interval; void* code_rate_LP; void* code_rate_HP; int hierarchy; int modulation; } ;
struct cx22702_state {int dummy; } ;


 int EAGAIN ;
 void* FEC_1_2 ;
 void* FEC_2_3 ;
 void* FEC_3_4 ;
 void* FEC_5_6 ;
 void* FEC_7_8 ;
 int GUARD_INTERVAL_1_16 ;
 int GUARD_INTERVAL_1_32 ;
 int GUARD_INTERVAL_1_4 ;
 int GUARD_INTERVAL_1_8 ;
 int HIERARCHY_1 ;
 int HIERARCHY_2 ;
 int HIERARCHY_4 ;
 int HIERARCHY_NONE ;
 int QAM_16 ;
 int QAM_64 ;
 int QPSK ;
 int TRANSMISSION_MODE_2K ;
 int TRANSMISSION_MODE_8K ;
 int cx22702_readreg (struct cx22702_state*,int) ;

__attribute__((used)) static int cx22702_get_tps(struct cx22702_state *state,
      struct dtv_frontend_properties *p)
{
 u8 val;


 if (!(cx22702_readreg(state, 0x0A) & 0x20))
  return -EAGAIN;

 val = cx22702_readreg(state, 0x01);
 switch ((val & 0x18) >> 3) {
 case 0:
  p->modulation = QPSK;
  break;
 case 1:
  p->modulation = QAM_16;
  break;
 case 2:
  p->modulation = QAM_64;
  break;
 }
 switch (val & 0x07) {
 case 0:
  p->hierarchy = HIERARCHY_NONE;
  break;
 case 1:
  p->hierarchy = HIERARCHY_1;
  break;
 case 2:
  p->hierarchy = HIERARCHY_2;
  break;
 case 3:
  p->hierarchy = HIERARCHY_4;
  break;
 }


 val = cx22702_readreg(state, 0x02);
 switch ((val & 0x38) >> 3) {
 case 0:
  p->code_rate_HP = FEC_1_2;
  break;
 case 1:
  p->code_rate_HP = FEC_2_3;
  break;
 case 2:
  p->code_rate_HP = FEC_3_4;
  break;
 case 3:
  p->code_rate_HP = FEC_5_6;
  break;
 case 4:
  p->code_rate_HP = FEC_7_8;
  break;
 }
 switch (val & 0x07) {
 case 0:
  p->code_rate_LP = FEC_1_2;
  break;
 case 1:
  p->code_rate_LP = FEC_2_3;
  break;
 case 2:
  p->code_rate_LP = FEC_3_4;
  break;
 case 3:
  p->code_rate_LP = FEC_5_6;
  break;
 case 4:
  p->code_rate_LP = FEC_7_8;
  break;
 }

 val = cx22702_readreg(state, 0x03);
 switch ((val & 0x0c) >> 2) {
 case 0:
  p->guard_interval = GUARD_INTERVAL_1_32;
  break;
 case 1:
  p->guard_interval = GUARD_INTERVAL_1_16;
  break;
 case 2:
  p->guard_interval = GUARD_INTERVAL_1_8;
  break;
 case 3:
  p->guard_interval = GUARD_INTERVAL_1_4;
  break;
 }
 switch (val & 0x03) {
 case 0:
  p->transmission_mode = TRANSMISSION_MODE_2K;
  break;
 case 1:
  p->transmission_mode = TRANSMISSION_MODE_8K;
  break;
 }

 return 0;
}
