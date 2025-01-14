
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usnic_vnic_res_spec {TYPE_1__* resources; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ cnt; } ;


 int EINVAL ;
 int USNIC_VNIC_RES_TYPE_MAX ;

int usnic_vnic_res_spec_satisfied(const struct usnic_vnic_res_spec *min_spec,
     struct usnic_vnic_res_spec *res_spec)
{
 int found, i, j;

 for (i = 0; i < USNIC_VNIC_RES_TYPE_MAX; i++) {
  found = 0;

  for (j = 0; j < USNIC_VNIC_RES_TYPE_MAX; j++) {
   if (res_spec->resources[i].type !=
    min_spec->resources[i].type)
    continue;
   found = 1;
   if (min_spec->resources[i].cnt >
     res_spec->resources[i].cnt)
    return -EINVAL;
   break;
  }

  if (!found)
   return -EINVAL;
 }
 return 0;
}
