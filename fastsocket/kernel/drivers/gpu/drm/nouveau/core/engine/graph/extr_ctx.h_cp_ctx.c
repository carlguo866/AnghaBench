
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_grctx {int ctxprog_reg; scalar_t__ ctxvals_base; scalar_t__ ctxvals_pos; } ;


 int CP_CTX ;
 int CP_CTX_COUNT ;
 int CP_CTX_COUNT_SHIFT ;
 int cp_lsr (struct nouveau_grctx*,int) ;
 int cp_out (struct nouveau_grctx*,int) ;

__attribute__((used)) static inline void
cp_ctx(struct nouveau_grctx *ctx, u32 reg, u32 length)
{
 ctx->ctxprog_reg = (reg - 0x00400000) >> 2;

 ctx->ctxvals_base = ctx->ctxvals_pos;
 ctx->ctxvals_pos = ctx->ctxvals_base + length;

 if (length > (CP_CTX_COUNT >> CP_CTX_COUNT_SHIFT)) {
  cp_lsr(ctx, length);
  length = 0;
 }

 cp_out(ctx, CP_CTX | (length << CP_CTX_COUNT_SHIFT) | ctx->ctxprog_reg);
}
