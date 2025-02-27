
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udf_sb_info {int s_anchor; int s_session; } ;
struct super_block {int s_blocksize_bits; TYPE_2__* s_bdev; } ;
struct kernel_lb_addr {int dummy; } ;
typedef int sector_t ;
struct TYPE_4__ {TYPE_1__* bd_inode; } ;
struct TYPE_3__ {int i_size; } ;


 struct udf_sb_info* UDF_SB (struct super_block*) ;
 scalar_t__ udf_check_anchor_block (struct super_block*,int,struct kernel_lb_addr*) ;

__attribute__((used)) static sector_t udf_scan_anchors(struct super_block *sb, sector_t lastblock,
     struct kernel_lb_addr *fileset)
{
 sector_t last[6];
 int i;
 struct udf_sb_info *sbi = UDF_SB(sb);
 int last_count = 0;


 if (sbi->s_anchor) {
  if (udf_check_anchor_block(sb, sbi->s_anchor, fileset))
   return lastblock;
 }







 if (udf_check_anchor_block(sb, sbi->s_session + 256, fileset))
  return lastblock;




 last[last_count++] = lastblock;
 if (lastblock >= 1)
  last[last_count++] = lastblock - 1;
 last[last_count++] = lastblock + 1;
 if (lastblock >= 2)
  last[last_count++] = lastblock - 2;
 if (lastblock >= 150)
  last[last_count++] = lastblock - 150;
 if (lastblock >= 152)
  last[last_count++] = lastblock - 152;

 for (i = 0; i < last_count; i++) {
  if (last[i] >= sb->s_bdev->bd_inode->i_size >>
    sb->s_blocksize_bits)
   continue;
  if (udf_check_anchor_block(sb, last[i], fileset))
   return last[i];
  if (last[i] < 256)
   continue;
  if (udf_check_anchor_block(sb, last[i] - 256, fileset))
   return last[i];
 }


 if (udf_check_anchor_block(sb, sbi->s_session + 512, fileset))
  return last[0];
 return 0;
}
