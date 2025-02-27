
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int VDB; int VSS; int HBE; int HSS; int VFT; int HHT; } ;
struct TYPE_3__ {int vdb; int vss; int hbe; int hss; } ;


 scalar_t__ F_MON_SM ;
 scalar_t__ F_MON_VGA ;
 TYPE_2__ current_par ;
 scalar_t__ mon_type ;
 TYPE_1__ videl ;

__attribute__((used)) static int falcon_blank(int blank_mode)
{




 int vdb, vss, hbe, hss;

 if (mon_type == F_MON_SM)
  return 1;

 vdb = current_par.VDB;
 vss = current_par.VSS;
 hbe = current_par.HBE;
 hss = current_par.HSS;

 if (blank_mode >= 1) {

  vdb = current_par.VFT + 1;

  hbe = current_par.HHT + 2;
 }

 if (mon_type == F_MON_VGA) {
  if (blank_mode == 2 || blank_mode == 4)
   vss = current_par.VFT + 1;
  if (blank_mode == 3 || blank_mode == 4)
   hss = current_par.HHT + 2;
 }

 videl.vdb = vdb;
 videl.vss = vss;
 videl.hbe = hbe;
 videl.hss = hss;

 return 0;
}
