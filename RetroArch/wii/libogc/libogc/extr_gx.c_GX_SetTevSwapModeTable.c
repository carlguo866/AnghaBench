
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_2__ {int* tevSwapModeTable; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;

void GX_SetTevSwapModeTable(u8 swapid,u8 r,u8 g,u8 b,u8 a)
{
 u32 regA = 0+(_SHIFTL(swapid,1,3));
 u32 regB = 1+(_SHIFTL(swapid,1,3));

 __gx->tevSwapModeTable[regA] = (__gx->tevSwapModeTable[regA]&~0x3)|(r&0x3);
 __gx->tevSwapModeTable[regA] = (__gx->tevSwapModeTable[regA]&~0xC)|(_SHIFTL(g,2,2));
 GX_LOAD_BP_REG(__gx->tevSwapModeTable[regA]);

 __gx->tevSwapModeTable[regB] = (__gx->tevSwapModeTable[regB]&~0x3)|(b&0x3);
 __gx->tevSwapModeTable[regB] = (__gx->tevSwapModeTable[regB]&~0xC)|(_SHIFTL(a,2,2));
 GX_LOAD_BP_REG(__gx->tevSwapModeTable[regB]);
}
