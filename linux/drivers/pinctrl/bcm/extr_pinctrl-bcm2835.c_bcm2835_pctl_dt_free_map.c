
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct pinctrl_map* configs; } ;
struct TYPE_4__ {TYPE_1__ configs; } ;
struct pinctrl_map {scalar_t__ type; TYPE_2__ data; } ;
struct pinctrl_dev {int dummy; } ;


 scalar_t__ PIN_MAP_TYPE_CONFIGS_PIN ;
 int kfree (struct pinctrl_map*) ;

__attribute__((used)) static void bcm2835_pctl_dt_free_map(struct pinctrl_dev *pctldev,
  struct pinctrl_map *maps, unsigned num_maps)
{
 int i;

 for (i = 0; i < num_maps; i++)
  if (maps[i].type == PIN_MAP_TYPE_CONFIGS_PIN)
   kfree(maps[i].data.configs.configs);

 kfree(maps);
}
