
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ptp_clock_info {int n_pins; TYPE_1__* pin_config; } ;
struct TYPE_5__ {char* name; TYPE_3__** attrs; } ;
struct ptp_clock {struct device_attribute* pin_dev_attr; TYPE_2__ pin_attr_group; TYPE_2__** pin_attr_groups; TYPE_3__** pin_attr; struct ptp_clock_info* info; } ;
struct TYPE_6__ {int mode; int name; } ;
struct device_attribute {TYPE_3__ attr; int store; int show; } ;
struct TYPE_4__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* kcalloc (int,int,int ) ;
 int kfree (struct device_attribute*) ;
 int ptp_pin_show ;
 int ptp_pin_store ;
 int sysfs_attr_init (TYPE_3__*) ;

int ptp_populate_pin_groups(struct ptp_clock *ptp)
{
 struct ptp_clock_info *info = ptp->info;
 int err = -ENOMEM, i, n_pins = info->n_pins;

 if (!n_pins)
  return 0;

 ptp->pin_dev_attr = kcalloc(n_pins, sizeof(*ptp->pin_dev_attr),
        GFP_KERNEL);
 if (!ptp->pin_dev_attr)
  goto no_dev_attr;

 ptp->pin_attr = kcalloc(1 + n_pins, sizeof(*ptp->pin_attr), GFP_KERNEL);
 if (!ptp->pin_attr)
  goto no_pin_attr;

 for (i = 0; i < n_pins; i++) {
  struct device_attribute *da = &ptp->pin_dev_attr[i];
  sysfs_attr_init(&da->attr);
  da->attr.name = info->pin_config[i].name;
  da->attr.mode = 0644;
  da->show = ptp_pin_show;
  da->store = ptp_pin_store;
  ptp->pin_attr[i] = &da->attr;
 }

 ptp->pin_attr_group.name = "pins";
 ptp->pin_attr_group.attrs = ptp->pin_attr;

 ptp->pin_attr_groups[0] = &ptp->pin_attr_group;

 return 0;

no_pin_attr:
 kfree(ptp->pin_dev_attr);
no_dev_attr:
 return err;
}
