
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_linear_range {int min_uV; int max_sel; int min_sel; int uV_step; } ;
struct regulator_dev {TYPE_2__* desc; } ;
struct TYPE_4__ {int n_linear_ranges; TYPE_1__* ops; struct regulator_linear_range* linear_ranges; } ;
struct TYPE_3__ {int (* list_voltage ) (struct regulator_dev*,int) ;} ;


 int BUG_ON (int) ;
 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int stub1 (struct regulator_dev*,int) ;

int regulator_map_voltage_linear_range(struct regulator_dev *rdev,
           int min_uV, int max_uV)
{
 const struct regulator_linear_range *range;
 int ret = -EINVAL;
 int voltage, i;

 if (!rdev->desc->n_linear_ranges) {
  BUG_ON(!rdev->desc->n_linear_ranges);
  return -EINVAL;
 }

 for (i = 0; i < rdev->desc->n_linear_ranges; i++) {
  int linear_max_uV;

  range = &rdev->desc->linear_ranges[i];
  linear_max_uV = range->min_uV +
   (range->max_sel - range->min_sel) * range->uV_step;

  if (!(min_uV <= linear_max_uV && max_uV >= range->min_uV))
   continue;

  if (min_uV <= range->min_uV)
   min_uV = range->min_uV;


  if (range->uV_step == 0) {
   ret = 0;
  } else {
   ret = DIV_ROUND_UP(min_uV - range->min_uV,
        range->uV_step);
   if (ret < 0)
    return ret;
  }

  ret += range->min_sel;





  voltage = rdev->desc->ops->list_voltage(rdev, ret);
  if (voltage >= min_uV && voltage <= max_uV)
   break;
 }

 if (i == rdev->desc->n_linear_ranges)
  return -EINVAL;

 return ret;
}
