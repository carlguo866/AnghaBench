
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fbtft_par {int bgr; TYPE_2__* info; } ;
struct TYPE_3__ {int rotate; } ;
struct TYPE_4__ {TYPE_1__ var; } ;


 int write_reg (struct fbtft_par*,int,int) ;

__attribute__((used)) static int set_var(struct fbtft_par *par)
{
 switch (par->info->var.rotate) {

 case 0:
  write_reg(par, 0x03, 0x0030 | (par->bgr << 12));
  break;
 case 180:
  write_reg(par, 0x03, 0x0000 | (par->bgr << 12));
  break;
 case 270:
  write_reg(par, 0x03, 0x0028 | (par->bgr << 12));
  break;
 case 90:
  write_reg(par, 0x03, 0x0018 | (par->bgr << 12));
  break;
 }

 return 0;
}
