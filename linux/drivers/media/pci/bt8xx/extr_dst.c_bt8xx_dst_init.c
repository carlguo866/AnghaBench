
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int ter_tuna_204 ;
struct dvb_frontend {struct dst_state* demodulator_priv; } ;
struct dst_state {int k22; int bandwidth; scalar_t__ dst_type; int type_flags; int tx_tuna; int cur_jiff; scalar_t__ diseq_flags; int tone; int voltage; int inversion; } ;
typedef int sat_tuna_204 ;
typedef int cab_tuna_204 ;
typedef int atsc_tuner ;


 int DST_TYPE_HAS_VLF ;
 scalar_t__ DST_TYPE_IS_ATSC ;
 scalar_t__ DST_TYPE_IS_CABLE ;
 scalar_t__ DST_TYPE_IS_SAT ;
 scalar_t__ DST_TYPE_IS_TERR ;
 int INVERSION_OFF ;
 int SEC_TONE_OFF ;
 int SEC_VOLTAGE_13 ;
 int jiffies ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static int bt8xx_dst_init(struct dvb_frontend *fe)
{
 struct dst_state *state = fe->demodulator_priv;

 static u8 sat_tuna_188[] = { 0x09, 0x00, 0x03, 0xb6, 0x01, 0x00, 0x73, 0x21, 0x00, 0x00 };
 static u8 sat_tuna_204[] = { 0x00, 0x00, 0x03, 0xb6, 0x01, 0x55, 0xbd, 0x50, 0x00, 0x00 };
 static u8 ter_tuna_188[] = { 0x09, 0x00, 0x03, 0xb6, 0x01, 0x07, 0x00, 0x00, 0x00, 0x00 };
 static u8 ter_tuna_204[] = { 0x00, 0x00, 0x03, 0xb6, 0x01, 0x07, 0x00, 0x00, 0x00, 0x00 };
 static u8 cab_tuna_188[] = { 0x09, 0x00, 0x03, 0xb6, 0x01, 0x07, 0x00, 0x00, 0x00, 0x00 };
 static u8 cab_tuna_204[] = { 0x00, 0x00, 0x03, 0xb6, 0x01, 0x07, 0x00, 0x00, 0x00, 0x00 };
 static u8 atsc_tuner[] = { 0x00, 0x00, 0x03, 0xb6, 0x01, 0x07, 0x00, 0x00, 0x00, 0x00 };

 state->inversion = INVERSION_OFF;
 state->voltage = SEC_VOLTAGE_13;
 state->tone = SEC_TONE_OFF;
 state->diseq_flags = 0;
 state->k22 = 0x02;
 state->bandwidth = 7000000;
 state->cur_jiff = jiffies;
 if (state->dst_type == DST_TYPE_IS_SAT)
  memcpy(state->tx_tuna, ((state->type_flags & DST_TYPE_HAS_VLF) ? sat_tuna_188 : sat_tuna_204), sizeof (sat_tuna_204));
 else if (state->dst_type == DST_TYPE_IS_TERR)
  memcpy(state->tx_tuna, ((state->type_flags & DST_TYPE_HAS_VLF) ? ter_tuna_188 : ter_tuna_204), sizeof (ter_tuna_204));
 else if (state->dst_type == DST_TYPE_IS_CABLE)
  memcpy(state->tx_tuna, ((state->type_flags & DST_TYPE_HAS_VLF) ? cab_tuna_188 : cab_tuna_204), sizeof (cab_tuna_204));
 else if (state->dst_type == DST_TYPE_IS_ATSC)
  memcpy(state->tx_tuna, atsc_tuner, sizeof (atsc_tuner));

 return 0;
}
