
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct spu_context {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* npc_read ) (struct spu_context*) ;} ;


 int stub1 (struct spu_context*) ;

__attribute__((used)) static u64 spufs_npc_get(struct spu_context *ctx)
{
 return ctx->ops->npc_read(ctx);
}
