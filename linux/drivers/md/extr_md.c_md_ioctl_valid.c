
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool md_ioctl_valid(unsigned int cmd)
{
 switch (cmd) {
 case 144:
 case 143:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
 case 142:
  return 1;
 default:
  return 0;
 }
}
