
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ufs_sb_private_info {scalar_t__ s_ncg; } ;
struct ufs_sb_info {scalar_t__* s_cgno; unsigned int s_cg_loaded; struct ufs_cg_private_info** s_ucpi; struct ufs_sb_private_info* s_uspi; } ;
struct ufs_cylinder_group {void* cg_irotor; void* cg_frotor; void* cg_rotor; } ;
struct ufs_cg_private_info {int c_irotor; int c_frotor; int c_rotor; } ;
struct super_block {int dummy; } ;
struct TYPE_4__ {unsigned int count; int * bh; } ;


 TYPE_1__* UCPI_UBH (struct ufs_cg_private_info*) ;
 int UFSD (char*,...) ;
 scalar_t__ UFS_CGNO_EMPTY ;
 scalar_t__ UFS_MAX_GROUP_LOADED ;
 struct ufs_sb_info* UFS_SB (struct super_block*) ;
 int brelse (int ) ;
 void* cpu_to_fs32 (struct super_block*,int ) ;
 struct ufs_cylinder_group* ubh_get_ucg (TYPE_1__*) ;
 int ubh_mark_buffer_dirty (TYPE_1__*) ;
 int ufs_panic (struct super_block*,char*,char*) ;

void ufs_put_cylinder (struct super_block * sb, unsigned bitmap_nr)
{
 struct ufs_sb_info * sbi = UFS_SB(sb);
 struct ufs_sb_private_info * uspi;
 struct ufs_cg_private_info * ucpi;
 struct ufs_cylinder_group * ucg;
 unsigned i;

 UFSD("ENTER, bitmap_nr %u\n", bitmap_nr);

 uspi = sbi->s_uspi;
 if (sbi->s_cgno[bitmap_nr] == UFS_CGNO_EMPTY) {
  UFSD("EXIT\n");
  return;
 }
 ucpi = sbi->s_ucpi[bitmap_nr];
 ucg = ubh_get_ucg(UCPI_UBH(ucpi));

 if (uspi->s_ncg > UFS_MAX_GROUP_LOADED && bitmap_nr >= sbi->s_cg_loaded) {
  ufs_panic (sb, "ufs_put_cylinder", "internal error");
  return;
 }




 ucg->cg_rotor = cpu_to_fs32(sb, ucpi->c_rotor);
 ucg->cg_frotor = cpu_to_fs32(sb, ucpi->c_frotor);
 ucg->cg_irotor = cpu_to_fs32(sb, ucpi->c_irotor);
 ubh_mark_buffer_dirty (UCPI_UBH(ucpi));
 for (i = 1; i < UCPI_UBH(ucpi)->count; i++) {
  brelse (UCPI_UBH(ucpi)->bh[i]);
 }

 sbi->s_cgno[bitmap_nr] = UFS_CGNO_EMPTY;
 UFSD("EXIT\n");
}
