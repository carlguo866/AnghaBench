
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int * R; } ;
struct TYPE_5__ {TYPE_1__ regs; } ;
typedef TYPE_2__ SH2_struct ;



void SH2InterpreterSetGPR(SH2_struct *context, int num, u32 value)
{
    context->regs.R[num] = value;
}
