
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



__attribute__((used)) static bool lm3533_precious_register(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 0x34:
  return 1;
 default:
  return 0;
 }
}
