
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int start; } ;
struct platform_device {struct resource* resource; } ;
struct device_node {int dummy; } ;


 unsigned int build_irq (int ,unsigned long,unsigned long) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 scalar_t__ of_node_name_eq (struct device_node*,char*) ;
 int upa_readl (unsigned long) ;
 int upa_writel (int,unsigned long) ;

__attribute__((used)) static unsigned int central_build_irq(struct device_node *dp,
          unsigned int ino,
          void *_data)
{
 struct device_node *central_dp = _data;
 struct platform_device *central_op = of_find_device_by_node(central_dp);
 struct resource *res;
 unsigned long imap, iclr;
 u32 tmp;

 if (of_node_name_eq(dp, "eeprom")) {
  res = &central_op->resource[5];
 } else if (of_node_name_eq(dp, "zs")) {
  res = &central_op->resource[4];
 } else if (of_node_name_eq(dp, "clock-board")) {
  res = &central_op->resource[3];
 } else {
  return ino;
 }

 imap = res->start + 0x00UL;
 iclr = res->start + 0x10UL;


 upa_writel(0, iclr);
 upa_readl(iclr);

 tmp = upa_readl(imap);
 tmp &= ~0x80000000;
 upa_writel(tmp, imap);

 return build_irq(0, iclr, imap);
}
