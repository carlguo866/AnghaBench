
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct broadsheetfb_par {int dummy; } ;


 int ETIMEDOUT ;
 int broadsheet_read_reg (struct broadsheetfb_par*,int) ;
 int mdelay (int) ;

__attribute__((used)) static int broadsheet_spiflash_wait_for_bit(struct broadsheetfb_par *par,
      u16 reg, int bitnum, int val,
      int timeout)
{
 u16 tmp;

 do {
  tmp = broadsheet_read_reg(par, reg);
  if (((tmp >> bitnum) & 1) == val)
   return 0;
  mdelay(1);
 } while (timeout--);

 return -ETIMEDOUT;
}
