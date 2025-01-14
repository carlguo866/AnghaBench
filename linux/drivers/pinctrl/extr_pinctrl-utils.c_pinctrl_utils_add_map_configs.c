
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* group_or_pin; unsigned long* configs; unsigned int num_configs; } ;
struct TYPE_4__ {TYPE_1__ configs; } ;
struct pinctrl_map {int type; TYPE_2__ data; } ;
struct pinctrl_dev {int dummy; } ;
typedef enum pinctrl_map_type { ____Placeholder_pinctrl_map_type } pinctrl_map_type ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 unsigned long* kmemdup (unsigned long*,unsigned int,int ) ;

int pinctrl_utils_add_map_configs(struct pinctrl_dev *pctldev,
  struct pinctrl_map **map, unsigned *reserved_maps,
  unsigned *num_maps, const char *group,
  unsigned long *configs, unsigned num_configs,
  enum pinctrl_map_type type)
{
 unsigned long *dup_configs;

 if (WARN_ON(*num_maps == *reserved_maps))
  return -ENOSPC;

 dup_configs = kmemdup(configs, num_configs * sizeof(*dup_configs),
         GFP_KERNEL);
 if (!dup_configs)
  return -ENOMEM;

 (*map)[*num_maps].type = type;
 (*map)[*num_maps].data.configs.group_or_pin = group;
 (*map)[*num_maps].data.configs.configs = dup_configs;
 (*map)[*num_maps].data.configs.num_configs = num_configs;
 (*num_maps)++;

 return 0;
}
