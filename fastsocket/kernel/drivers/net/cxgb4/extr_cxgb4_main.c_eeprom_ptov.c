
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EEPROMSIZE ;
 int EINVAL ;

__attribute__((used)) static int eeprom_ptov(unsigned int phys_addr, unsigned int fn, unsigned int sz)
{
 fn *= sz;
 if (phys_addr < 1024)
  return phys_addr + (31 << 10);
 if (phys_addr < 1024 + fn)
  return 31744 - fn + phys_addr - 1024;
 if (phys_addr < EEPROMSIZE)
  return phys_addr - 1024 - fn;
 return -EINVAL;
}
