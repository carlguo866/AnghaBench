
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_obj_desc {int dummy; } ;
struct fsl_mc_device {int dummy; } ;
struct device {int dummy; } ;


 int fsl_mc_device_match (struct fsl_mc_device*,struct fsl_mc_obj_desc*) ;
 struct fsl_mc_device* to_fsl_mc_device (struct device*) ;

__attribute__((used)) static int __fsl_mc_device_match(struct device *dev, void *data)
{
 struct fsl_mc_obj_desc *obj_desc = data;
 struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);

 return fsl_mc_device_match(mc_dev, obj_desc);
}
