
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* SLOT; scalar_t__* op1_out; scalar_t__ mem_value; } ;
struct TYPE_4__ {int Incr; void* vol_out; void* volume; int state; scalar_t__ ssgn; scalar_t__ phase; scalar_t__ key; } ;
typedef TYPE_2__ FM_CH ;


 int EG_OFF ;
 void* MAX_ATT_INDEX ;

__attribute__((used)) static void reset_channels(FM_CH *CH , int num )
{
  int c,s;

  for( c = 0 ; c < num ; c++ )
  {
    CH[c].mem_value = 0;
    CH[c].op1_out[0] = 0;
    CH[c].op1_out[1] = 0;
    for(s = 0 ; s < 4 ; s++ )
    {
      CH[c].SLOT[s].Incr = -1;
      CH[c].SLOT[s].key = 0;
      CH[c].SLOT[s].phase = 0;
      CH[c].SLOT[s].ssgn = 0;
      CH[c].SLOT[s].state = EG_OFF;
      CH[c].SLOT[s].volume = MAX_ATT_INDEX;
      CH[c].SLOT[s].vol_out = MAX_ATT_INDEX;
    }
  }
}
