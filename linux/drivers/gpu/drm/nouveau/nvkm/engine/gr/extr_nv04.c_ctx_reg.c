
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nv04_gr_chan {scalar_t__* nv04; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__* nv04_gr_ctx_regs ;

__attribute__((used)) static u32 *ctx_reg(struct nv04_gr_chan *chan, u32 reg)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(nv04_gr_ctx_regs); i++) {
  if (nv04_gr_ctx_regs[i] == reg)
   return &chan->nv04[i];
 }

 return ((void*)0);
}
