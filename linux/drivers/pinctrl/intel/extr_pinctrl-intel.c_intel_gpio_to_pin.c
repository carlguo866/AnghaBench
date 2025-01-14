
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pinctrl {int ncommunities; struct intel_community* communities; } ;
struct intel_padgroup {unsigned int gpio_base; unsigned int size; int base; } ;
struct intel_community {int ngpps; struct intel_padgroup* gpps; } ;


 int EINVAL ;

__attribute__((used)) static int intel_gpio_to_pin(struct intel_pinctrl *pctrl, unsigned int offset,
        const struct intel_community **community,
        const struct intel_padgroup **padgrp)
{
 int i;

 for (i = 0; i < pctrl->ncommunities; i++) {
  const struct intel_community *comm = &pctrl->communities[i];
  int j;

  for (j = 0; j < comm->ngpps; j++) {
   const struct intel_padgroup *pgrp = &comm->gpps[j];

   if (pgrp->gpio_base < 0)
    continue;

   if (offset >= pgrp->gpio_base &&
       offset < pgrp->gpio_base + pgrp->size) {
    int pin;

    pin = pgrp->base + offset - pgrp->gpio_base;
    if (community)
     *community = comm;
    if (padgrp)
     *padgrp = pgrp;

    return pin;
   }
  }
 }

 return -EINVAL;
}
