
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mlx4_context {scalar_t__ hca_core_clock; } ;
struct ibv_context {int dummy; } ;


 int EOPNOTSUPP ;
 int READL (scalar_t__) ;
 unsigned int be32toh (int ) ;
 struct mlx4_context* to_mctx (struct ibv_context*) ;

__attribute__((used)) static int mlx4_read_clock(struct ibv_context *context, uint64_t *cycles)
{
 unsigned int clockhi, clocklo, clockhi1;
 int i;
 struct mlx4_context *ctx = to_mctx(context);

 if (!ctx->hca_core_clock)
  return -EOPNOTSUPP;


 for (i = 0; i < 2; i++) {
  clockhi = be32toh(READL(ctx->hca_core_clock));
  clocklo = be32toh(READL(ctx->hca_core_clock + 4));
  clockhi1 = be32toh(READL(ctx->hca_core_clock));
  if (clockhi == clockhi1)
   break;
 }

 *cycles = (uint64_t)clockhi << 32 | (uint64_t)clocklo;

 return 0;
}
