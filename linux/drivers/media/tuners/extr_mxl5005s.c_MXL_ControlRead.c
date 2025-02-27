
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct mxl5005s_state {size_t Init_Ctrl_Num; size_t CH_Ctrl_Num; size_t MXL_Ctrl_Num; TYPE_3__* MXL_Ctrl; TYPE_2__* CH_Ctrl; TYPE_1__* Init_Ctrl; } ;
struct dvb_frontend {struct mxl5005s_state* tuner_priv; } ;
struct TYPE_6__ {size_t Ctrl_Num; size_t size; int* val; } ;
struct TYPE_5__ {size_t Ctrl_Num; size_t size; int* val; } ;
struct TYPE_4__ {size_t Ctrl_Num; size_t size; int* val; } ;



__attribute__((used)) static u16 MXL_ControlRead(struct dvb_frontend *fe, u16 controlNum, u32 *value)
{
 struct mxl5005s_state *state = fe->tuner_priv;
 u32 ctrlVal ;
 u16 i, k ;

 for (i = 0; i < state->Init_Ctrl_Num ; i++) {

  if (controlNum == state->Init_Ctrl[i].Ctrl_Num) {

   ctrlVal = 0;
   for (k = 0; k < state->Init_Ctrl[i].size; k++)
    ctrlVal += state->Init_Ctrl[i].val[k] * (1<<k);
   *value = ctrlVal;
   return 0;
  }
 }

 for (i = 0; i < state->CH_Ctrl_Num ; i++) {

  if (controlNum == state->CH_Ctrl[i].Ctrl_Num) {

   ctrlVal = 0;
   for (k = 0; k < state->CH_Ctrl[i].size; k++)
    ctrlVal += state->CH_Ctrl[i].val[k] * (1 << k);
   *value = ctrlVal;
   return 0;

  }
 }
 return 1;
}
