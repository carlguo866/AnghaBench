
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int CEC_PHYS_ADDR_INVALID ;
 int EINVAL ;

int v4l2_phys_addr_validate(u16 phys_addr, u16 *parent, u16 *port)
{
 int i;

 if (parent)
  *parent = phys_addr;
 if (port)
  *port = 0;
 if (phys_addr == CEC_PHYS_ADDR_INVALID)
  return 0;
 for (i = 0; i < 16; i += 4)
  if (phys_addr & (0xf << i))
   break;
 if (i == 16)
  return 0;
 if (parent)
  *parent = phys_addr & (0xfff0 << i);
 if (port)
  *port = (phys_addr >> i) & 0xf;
 for (i += 4; i < 16; i += 4)
  if ((phys_addr & (0xf << i)) == 0)
   return -EINVAL;
 return 0;
}
