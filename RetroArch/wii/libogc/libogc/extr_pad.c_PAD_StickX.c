
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s8 ;
struct TYPE_2__ {int chan; int stickX; } ;


 int PAD_CHAN0 ;
 int PAD_CHAN3 ;
 TYPE_1__* __pad_keys ;

s8 PAD_StickX(int pad)
{
 if(pad<PAD_CHAN0 || pad>PAD_CHAN3 || __pad_keys[pad].chan==-1) return 0;
 return __pad_keys[pad].stickX;
}
