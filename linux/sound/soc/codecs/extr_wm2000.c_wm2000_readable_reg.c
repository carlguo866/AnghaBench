
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool wm2000_readable_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 132:
 case 147:
 case 140:
 case 139:
 case 137:
 case 128:
 case 149:
 case 148:
 case 145:
 case 144:
 case 129:
 case 133:
 case 131:
 case 130:
 case 143:
 case 142:
 case 138:
 case 135:
 case 134:
 case 146:
 case 141:
 case 150:
 case 136:
  return 1;
 default:
  return 0;
 }
}
