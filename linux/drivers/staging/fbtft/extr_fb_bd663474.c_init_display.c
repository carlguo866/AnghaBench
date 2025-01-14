
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* reset ) (struct fbtft_par*) ;} ;
struct TYPE_3__ {scalar_t__ cs; } ;
struct fbtft_par {TYPE_2__ fbtftops; TYPE_1__ gpio; } ;


 int gpiod_set_value (scalar_t__,int ) ;
 int mdelay (int) ;
 int stub1 (struct fbtft_par*) ;
 int write_reg (struct fbtft_par*,int,int) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 if (par->gpio.cs)
  gpiod_set_value(par->gpio.cs, 0);

 par->fbtftops.reset(par);




 write_reg(par, 0x000, 0x0001);
 mdelay(10);


 write_reg(par, 0x100, 0x0000);
 write_reg(par, 0x101, 0x0000);
 write_reg(par, 0x102, 0x3110);
 write_reg(par, 0x103, 0xe200);
 write_reg(par, 0x110, 0x009d);
 write_reg(par, 0x111, 0x0022);
 write_reg(par, 0x100, 0x0120);
 mdelay(20);

 write_reg(par, 0x100, 0x3120);
 mdelay(80);

 write_reg(par, 0x001, 0x0100);
 write_reg(par, 0x002, 0x0000);
 write_reg(par, 0x003, 0x1230);
 write_reg(par, 0x006, 0x0000);
 write_reg(par, 0x007, 0x0101);
 write_reg(par, 0x008, 0x0808);
 write_reg(par, 0x009, 0x0000);
 write_reg(par, 0x00b, 0x0000);
 write_reg(par, 0x00c, 0x0000);
 write_reg(par, 0x00d, 0x0018);

 write_reg(par, 0x012, 0x0000);
 write_reg(par, 0x013, 0x0000);
 write_reg(par, 0x018, 0x0000);
 write_reg(par, 0x019, 0x0000);

 write_reg(par, 0x203, 0x0000);
 write_reg(par, 0x204, 0x0000);

 write_reg(par, 0x210, 0x0000);
 write_reg(par, 0x211, 0x00ef);
 write_reg(par, 0x212, 0x0000);
 write_reg(par, 0x213, 0x013f);
 write_reg(par, 0x214, 0x0000);
 write_reg(par, 0x215, 0x0000);
 write_reg(par, 0x216, 0x0000);
 write_reg(par, 0x217, 0x0000);


 write_reg(par, 0x300, 0x5343);
 write_reg(par, 0x301, 0x1021);
 write_reg(par, 0x302, 0x0003);
 write_reg(par, 0x303, 0x0011);
 write_reg(par, 0x304, 0x050a);
 write_reg(par, 0x305, 0x4342);
 write_reg(par, 0x306, 0x1100);
 write_reg(par, 0x307, 0x0003);
 write_reg(par, 0x308, 0x1201);
 write_reg(par, 0x309, 0x050a);


 write_reg(par, 0x400, 0x4027);
 write_reg(par, 0x401, 0x0000);
 write_reg(par, 0x402, 0x0000);
 write_reg(par, 0x403, 0x013f);
 write_reg(par, 0x404, 0x0000);

 write_reg(par, 0x200, 0x0000);
 write_reg(par, 0x201, 0x0000);
 write_reg(par, 0x100, 0x7120);
 write_reg(par, 0x007, 0x0103);
 mdelay(10);
 write_reg(par, 0x007, 0x0113);

 return 0;
}
