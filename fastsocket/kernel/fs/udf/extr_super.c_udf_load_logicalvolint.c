
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct udf_sb_info {struct buffer_head* s_lvid_bh; } ;
struct super_block {scalar_t__ s_blocksize; } ;
struct TYPE_2__ {scalar_t__ extLength; } ;
struct logicalVolIntegrityDesc {TYPE_1__ nextIntegrityExt; } ;
struct kernel_extent_ad {scalar_t__ extLength; int extLocation; } ;
struct buffer_head {scalar_t__ b_data; } ;


 scalar_t__ TAG_IDENT_LVID ;
 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 struct kernel_extent_ad leea_to_cpu (TYPE_1__) ;
 struct buffer_head* udf_read_tagged (struct super_block*,int ,int ,scalar_t__*) ;

__attribute__((used)) static void udf_load_logicalvolint(struct super_block *sb, struct kernel_extent_ad loc)
{
 struct buffer_head *bh = ((void*)0);
 uint16_t ident;
 struct udf_sb_info *sbi = UDF_SB(sb);
 struct logicalVolIntegrityDesc *lvid;

 while (loc.extLength > 0 &&
        (bh = udf_read_tagged(sb, loc.extLocation,
         loc.extLocation, &ident)) &&
        ident == TAG_IDENT_LVID) {
  sbi->s_lvid_bh = bh;
  lvid = (struct logicalVolIntegrityDesc *)bh->b_data;

  if (lvid->nextIntegrityExt.extLength)
   udf_load_logicalvolint(sb,
    leea_to_cpu(lvid->nextIntegrityExt));

  if (sbi->s_lvid_bh != bh)
   brelse(bh);
  loc.extLength -= sb->s_blocksize;
  loc.extLocation++;
 }
 if (sbi->s_lvid_bh != bh)
  brelse(bh);
}
