
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_dsp {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* stall ) (struct sst_dsp*) ;} ;


 int stub1 (struct sst_dsp*) ;

void sst_dsp_stall(struct sst_dsp *sst)
{
 if (sst->ops->stall)
  sst->ops->stall(sst);
}
