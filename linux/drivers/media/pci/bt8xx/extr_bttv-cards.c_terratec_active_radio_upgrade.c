
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr; } ;
struct TYPE_3__ {int wren; int most; int clk; int data; } ;
struct bttv {int has_radio; int has_tea575x; int mbox_iow; int mbox_ior; int mbox_csel; int has_saa6588; TYPE_2__ c; TYPE_1__ tea_gpio; } ;


 int pr_info (char*,int ) ;
 int tea575x_init (struct bttv*) ;

__attribute__((used)) static int terratec_active_radio_upgrade(struct bttv *btv)
{
 btv->has_radio = 1;
 btv->has_tea575x = 1;
 btv->tea_gpio.wren = 4;
 btv->tea_gpio.most = 5;
 btv->tea_gpio.clk = 3;
 btv->tea_gpio.data = 2;

 btv->mbox_iow = 1 << 8;
 btv->mbox_ior = 1 << 9;
 btv->mbox_csel = 1 << 10;

 if (!tea575x_init(btv)) {
  pr_info("%d: Terratec Active Radio Upgrade found\n", btv->c.nr);
  btv->has_saa6588 = 1;
 }

 return 0;
}
