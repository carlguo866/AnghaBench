
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int mctlwtst; } ;
struct TYPE_10__ {int system; } ;
struct TYPE_14__ {TYPE_6__ reg; TYPE_3__ pll; } ;
struct TYPE_11__ {int ref_freq; } ;
struct TYPE_12__ {TYPE_4__ pll; } ;
struct TYPE_8__ {int vcomax; } ;
struct TYPE_9__ {TYPE_1__ pixel; } ;
struct matrox_fb_info {TYPE_7__ values; TYPE_5__ features; TYPE_2__ limits; } ;



__attribute__((used)) static void default_pins1(struct matrox_fb_info *minfo)
{

 minfo->limits.pixel.vcomax = 220000;
 minfo->values.pll.system = 50000;
 minfo->features.pll.ref_freq = 14318;
 minfo->values.reg.mctlwtst = 0x00030101;
}
