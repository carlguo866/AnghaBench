
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcmrvl_platform_data {int irq; int irq_polarity; } ;
struct device_node {int dummy; } ;


 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int nfcmrvl_parse_dt (struct device_node*,struct nfcmrvl_platform_data*) ;
 scalar_t__ of_find_property (struct device_node*,char*,int *) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int nfcmrvl_i2c_parse_dt(struct device_node *node,
    struct nfcmrvl_platform_data *pdata)
{
 int ret;

 ret = nfcmrvl_parse_dt(node, pdata);
 if (ret < 0) {
  pr_err("Failed to get generic entries\n");
  return ret;
 }

 if (of_find_property(node, "i2c-int-falling", ((void*)0)))
  pdata->irq_polarity = IRQF_TRIGGER_FALLING;
 else
  pdata->irq_polarity = IRQF_TRIGGER_RISING;

 ret = irq_of_parse_and_map(node, 0);
 if (ret < 0) {
  pr_err("Unable to get irq, error: %d\n", ret);
  return ret;
 }
 pdata->irq = ret;

 return 0;
}
