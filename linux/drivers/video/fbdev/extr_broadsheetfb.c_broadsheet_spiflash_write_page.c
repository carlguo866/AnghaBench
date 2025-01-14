
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct broadsheetfb_par {int dummy; } ;


 int BS_SPIFLASH_PAGE_SIZE ;
 int broadsheet_spiflash_op_on_address (struct broadsheetfb_par*,int,int) ;
 int broadsheet_spiflash_wait_for_status (struct broadsheetfb_par*,int) ;
 int broadsheet_spiflash_write_byte (struct broadsheetfb_par*,char const) ;
 int broadsheet_spiflash_write_control (struct broadsheetfb_par*,int) ;
 int broadsheet_write_reg (struct broadsheetfb_par*,int,int ) ;

__attribute__((used)) static int broadsheet_spiflash_write_page(struct broadsheetfb_par *par,
      int addr, const char *data)
{
 int err;
 int i;

 broadsheet_spiflash_write_control(par, 1);

 err = broadsheet_spiflash_op_on_address(par, 0x02, addr);
 if (err)
  goto failout;

 for (i = 0; i < BS_SPIFLASH_PAGE_SIZE; i++) {
  err = broadsheet_spiflash_write_byte(par, data[i]);
  if (err)
   goto failout;
 }

 broadsheet_write_reg(par, 0x0208, 0);

 err = broadsheet_spiflash_wait_for_status(par, 100);

failout:
 return err;
}
