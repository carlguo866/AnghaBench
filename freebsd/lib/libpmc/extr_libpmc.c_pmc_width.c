
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int pmc_id_t ;
typedef enum pmc_class { ____Placeholder_pmc_class } pmc_class ;
struct TYPE_4__ {unsigned int pm_nclass; TYPE_1__* pm_classes; } ;
struct TYPE_3__ {int pm_class; int pm_width; } ;


 int EINVAL ;
 int PMC_ID_TO_CLASS (int ) ;
 TYPE_2__ cpu_info ;
 int errno ;

int
pmc_width(pmc_id_t pmcid, uint32_t *width)
{
 unsigned int i;
 enum pmc_class cl;

 cl = PMC_ID_TO_CLASS(pmcid);
 for (i = 0; i < cpu_info.pm_nclass; i++)
  if (cpu_info.pm_classes[i].pm_class == cl) {
   *width = cpu_info.pm_classes[i].pm_width;
   return (0);
  }
 errno = EINVAL;
 return (-1);
}
