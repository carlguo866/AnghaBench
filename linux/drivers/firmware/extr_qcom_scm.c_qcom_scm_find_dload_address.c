
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct resource {scalar_t__ start; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 int of_property_read_u32_index (struct device_node*,char*,int,scalar_t__*) ;

__attribute__((used)) static int qcom_scm_find_dload_address(struct device *dev, u64 *addr)
{
 struct device_node *tcsr;
 struct device_node *np = dev->of_node;
 struct resource res;
 u32 offset;
 int ret;

 tcsr = of_parse_phandle(np, "qcom,dload-mode", 0);
 if (!tcsr)
  return 0;

 ret = of_address_to_resource(tcsr, 0, &res);
 of_node_put(tcsr);
 if (ret)
  return ret;

 ret = of_property_read_u32_index(np, "qcom,dload-mode", 1, &offset);
 if (ret < 0)
  return ret;

 *addr = res.start + offset;

 return 0;
}
