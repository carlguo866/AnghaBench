
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct pbr_sector_t {scalar_t__ bpb; } ;
struct fs_info_t {int sectors_per_clu_bits; int cluster_size_bits; int cluster_size; int num_FAT_sectors; int FAT1_start_sector; int PBR_sector; int FAT2_start_sector; int root_start_sector; int data_start_sector; int num_sectors; int num_clusters; int dentries_in_root; int dentries_per_clu; int clu_srch_ptr; int * fs_func; int used_clusters; int vol_flag; scalar_t__ root_dir; void* vol_id; int vol_type; int sectors_per_clu; } ;
struct bpb16_t {int num_fats; int num_root_entries; int vol_serial; int num_huge_sectors; int num_sectors; int num_reserved; int num_fat_sectors; int sectors_per_clu; } ;
struct bd_info_t {int sector_size_bits; } ;
typedef int s32 ;
struct TYPE_2__ {struct bd_info_t bd_info; struct fs_info_t fs_info; } ;


 int DENTRY_SIZE_BITS ;
 TYPE_1__* EXFAT_SB (struct super_block*) ;
 int FAT12 ;
 int FAT12_THRESHOLD ;
 int FAT16 ;
 int FFS_FORMATERR ;
 int FFS_SUCCESS ;
 int GET16 (int ) ;
 void* GET32 (int ) ;
 int UINT_MAX ;
 int VOL_CLEAN ;
 int fat_fs_func ;
 int ilog2 (int ) ;

s32 fat16_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
{
 s32 num_reserved, num_root_sectors;
 struct bpb16_t *p_bpb = (struct bpb16_t *)p_pbr->bpb;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);

 if (p_bpb->num_fats == 0)
  return FFS_FORMATERR;

 num_root_sectors = GET16(p_bpb->num_root_entries) << DENTRY_SIZE_BITS;
 num_root_sectors = ((num_root_sectors - 1) >>
       p_bd->sector_size_bits) + 1;

 p_fs->sectors_per_clu = p_bpb->sectors_per_clu;
 p_fs->sectors_per_clu_bits = ilog2(p_bpb->sectors_per_clu);
 p_fs->cluster_size_bits = p_fs->sectors_per_clu_bits +
      p_bd->sector_size_bits;
 p_fs->cluster_size = 1 << p_fs->cluster_size_bits;

 p_fs->num_FAT_sectors = GET16(p_bpb->num_fat_sectors);

 p_fs->FAT1_start_sector = p_fs->PBR_sector + GET16(p_bpb->num_reserved);
 if (p_bpb->num_fats == 1)
  p_fs->FAT2_start_sector = p_fs->FAT1_start_sector;
 else
  p_fs->FAT2_start_sector = p_fs->FAT1_start_sector +
       p_fs->num_FAT_sectors;

 p_fs->root_start_sector = p_fs->FAT2_start_sector +
      p_fs->num_FAT_sectors;
 p_fs->data_start_sector = p_fs->root_start_sector + num_root_sectors;

 p_fs->num_sectors = GET16(p_bpb->num_sectors);
 if (p_fs->num_sectors == 0)
  p_fs->num_sectors = GET32(p_bpb->num_huge_sectors);

 num_reserved = p_fs->data_start_sector - p_fs->PBR_sector;
 p_fs->num_clusters = ((p_fs->num_sectors - num_reserved) >>
         p_fs->sectors_per_clu_bits) + 2;


 if (p_fs->num_clusters < FAT12_THRESHOLD)
  p_fs->vol_type = FAT12;
 else
  p_fs->vol_type = FAT16;
 p_fs->vol_id = GET32(p_bpb->vol_serial);

 p_fs->root_dir = 0;
 p_fs->dentries_in_root = GET16(p_bpb->num_root_entries);
 p_fs->dentries_per_clu = 1 << (p_fs->cluster_size_bits -
           DENTRY_SIZE_BITS);

 p_fs->vol_flag = VOL_CLEAN;
 p_fs->clu_srch_ptr = 2;
 p_fs->used_clusters = UINT_MAX;

 p_fs->fs_func = &fat_fs_func;

 return FFS_SUCCESS;
}
