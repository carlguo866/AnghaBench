
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_ltc {TYPE_1__* func; } ;
struct TYPE_2__ {int (* invalidate ) (struct nvkm_ltc*) ;} ;


 int stub1 (struct nvkm_ltc*) ;

void
nvkm_ltc_invalidate(struct nvkm_ltc *ltc)
{
 if (ltc->func->invalidate)
  ltc->func->invalidate(ltc);
}
