
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int dev_err (struct device*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int of_fsl_espi_get_chipselects(struct device *dev)
{
 struct device_node *np = dev->of_node;
 u32 num_cs;
 int ret;

 ret = of_property_read_u32(np, "fsl,espi-num-chipselects", &num_cs);
 if (ret) {
  dev_err(dev, "No 'fsl,espi-num-chipselects' property\n");
  return 0;
 }

 return num_cs;
}
