
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool stm32_sai_sub_readable_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 136:
 case 135:
 case 133:
 case 129:
 case 132:
 case 128:
 case 137:
 case 134:
 case 131:
 case 130:
  return 1;
 default:
  return 0;
 }
}
