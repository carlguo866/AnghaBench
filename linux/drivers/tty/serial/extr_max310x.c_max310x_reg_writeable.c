
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool max310x_reg_writeable(struct device *dev, unsigned int reg)
{
 switch (reg & 0x1f) {
 case 133:
 case 132:
 case 130:
 case 129:
 case 128:
 case 131:
  return 0;
 default:
  break;
 }

 return 1;
}
