
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static u16 asd_calc_flash_chksum(u16 *p, int size)
{
 u16 chksum = 0;

 while (size-- > 0)
  chksum += *p++;

 return chksum;
}
