
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;


 int RTL_REG_VLAN_ENABLE ;
 int rtl_get (struct switch_dev*,int ) ;

__attribute__((used)) static int
rtl_get_vlan(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
 val->value.i = rtl_get(dev, RTL_REG_VLAN_ENABLE);
 return 0;
}
