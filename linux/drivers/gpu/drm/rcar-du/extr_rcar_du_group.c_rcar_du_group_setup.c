
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_group {int dptsr_planes; int lock; struct rcar_du_device* dev; } ;
struct rcar_du_device {TYPE_1__* info; } ;
struct TYPE_2__ {int gen; } ;


 int DEFR ;
 int DEFR10 ;
 int DEFR10_CODE ;
 int DEFR10_DEFE10 ;
 int DEFR2 ;
 int DEFR2_CODE ;
 int DEFR2_DEFE2G ;
 int DEFR3 ;
 int DEFR3_CODE ;
 int DEFR3_DEFE3 ;
 int DEFR4 ;
 int DEFR4_CODE ;
 int DEFR5 ;
 int DEFR5_CODE ;
 int DEFR5_DEFE5 ;
 int DEFR_CODE ;
 int DEFR_DEFE ;
 int DORCR ;
 int DORCR_DPRS ;
 int DORCR_PG1D_DS1 ;
 int DPTSR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcar_du_group_setup_defr8 (struct rcar_du_group*) ;
 int rcar_du_group_setup_didsr (struct rcar_du_group*) ;
 int rcar_du_group_setup_pins (struct rcar_du_group*) ;
 int rcar_du_group_write (struct rcar_du_group*,int ,int) ;

__attribute__((used)) static void rcar_du_group_setup(struct rcar_du_group *rgrp)
{
 struct rcar_du_device *rcdu = rgrp->dev;


 rcar_du_group_write(rgrp, DEFR, DEFR_CODE | DEFR_DEFE);
 if (rcdu->info->gen < 3) {
  rcar_du_group_write(rgrp, DEFR2, DEFR2_CODE | DEFR2_DEFE2G);
  rcar_du_group_write(rgrp, DEFR3, DEFR3_CODE | DEFR3_DEFE3);
  rcar_du_group_write(rgrp, DEFR4, DEFR4_CODE);
 }
 rcar_du_group_write(rgrp, DEFR5, DEFR5_CODE | DEFR5_DEFE5);

 rcar_du_group_setup_pins(rgrp);

 if (rcdu->info->gen >= 2) {
  rcar_du_group_setup_defr8(rgrp);
  rcar_du_group_setup_didsr(rgrp);
 }

 if (rcdu->info->gen >= 3)
  rcar_du_group_write(rgrp, DEFR10, DEFR10_CODE | DEFR10_DEFE10);





 rcar_du_group_write(rgrp, DORCR, DORCR_PG1D_DS1 | DORCR_DPRS);


 mutex_lock(&rgrp->lock);
 rcar_du_group_write(rgrp, DPTSR, (rgrp->dptsr_planes << 16) |
       rgrp->dptsr_planes);
 mutex_unlock(&rgrp->lock);
}
