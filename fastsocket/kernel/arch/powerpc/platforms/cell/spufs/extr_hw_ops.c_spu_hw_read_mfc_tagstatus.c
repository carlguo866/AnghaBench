
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct spu_context {TYPE_2__* spu; } ;
struct TYPE_4__ {TYPE_1__* problem; } ;
struct TYPE_3__ {int dma_tagstatus_R; } ;


 int in_be32 (int *) ;

__attribute__((used)) static u32 spu_hw_read_mfc_tagstatus(struct spu_context * ctx)
{
 return in_be32(&ctx->spu->problem->dma_tagstatus_R);
}
