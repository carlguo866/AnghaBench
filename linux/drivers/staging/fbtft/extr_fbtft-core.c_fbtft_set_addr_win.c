
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbtft_par {int dummy; } ;


 int MIPI_DCS_SET_COLUMN_ADDRESS ;
 int MIPI_DCS_SET_PAGE_ADDRESS ;
 int MIPI_DCS_WRITE_MEMORY_START ;
 int write_reg (struct fbtft_par*,int ,...) ;

__attribute__((used)) static void fbtft_set_addr_win(struct fbtft_par *par, int xs, int ys, int xe,
          int ye)
{
 write_reg(par, MIPI_DCS_SET_COLUMN_ADDRESS,
    (xs >> 8) & 0xFF, xs & 0xFF, (xe >> 8) & 0xFF, xe & 0xFF);

 write_reg(par, MIPI_DCS_SET_PAGE_ADDRESS,
    (ys >> 8) & 0xFF, ys & 0xFF, (ye >> 8) & 0xFF, ye & 0xFF);

 write_reg(par, MIPI_DCS_WRITE_MEMORY_START);
}
