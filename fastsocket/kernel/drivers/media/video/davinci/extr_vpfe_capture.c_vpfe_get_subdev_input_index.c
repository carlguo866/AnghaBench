
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_subdev_info {int num_inputs; } ;
struct vpfe_device {struct vpfe_config* cfg; } ;
struct vpfe_config {int num_subdevs; struct vpfe_subdev_info* sub_devs; } ;


 int EINVAL ;

__attribute__((used)) static int vpfe_get_subdev_input_index(struct vpfe_device *vpfe_dev,
     int *subdev_index,
     int *subdev_input_index,
     int app_input_index)
{
 struct vpfe_config *cfg = vpfe_dev->cfg;
 struct vpfe_subdev_info *sdinfo;
 int i, j = 0;

 for (i = 0; i < cfg->num_subdevs; i++) {
  sdinfo = &cfg->sub_devs[i];
  if (app_input_index < (j + sdinfo->num_inputs)) {
   *subdev_index = i;
   *subdev_input_index = app_input_index - j;
   return 0;
  }
  j += sdinfo->num_inputs;
 }
 return -EINVAL;
}
