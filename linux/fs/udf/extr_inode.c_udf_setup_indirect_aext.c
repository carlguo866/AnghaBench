
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int udf_pblk_t ;
struct tag {int dummy; } ;
struct super_block {int s_blocksize; } ;
struct short_ad {int dummy; } ;
struct long_ad {int dummy; } ;
struct kernel_lb_addr {int logicalBlockNum; int partitionReferenceNum; } ;
struct inode {struct super_block* i_sb; } ;
struct extent_position {int offset; struct buffer_head* bh; struct kernel_lb_addr block; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct allocExtDesc {void* lengthAllocDescs; void* previousAllocExtLocation; } ;
struct TYPE_4__ {scalar_t__ i_alloc_type; } ;
struct TYPE_3__ {int s_udfrev; } ;


 int EIO ;
 int EXT_NEXT_EXTENT_ALLOCDECS ;
 scalar_t__ ICBTAG_FLAG_AD_LONG ;
 scalar_t__ ICBTAG_FLAG_AD_SHORT ;
 int TAG_IDENT_AED ;
 int UDF_FLAG_STRICT ;
 TYPE_2__* UDF_I (struct inode*) ;
 int UDF_QUERY_FLAG (struct super_block*,int ) ;
 TYPE_1__* UDF_SB (struct super_block*) ;
 int __udf_add_aext (struct inode*,struct extent_position*,struct kernel_lb_addr*,int,int) ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_le32 (int ) ;
 int lock_buffer (struct buffer_head*) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int memset (scalar_t__,int,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int udf_current_aext (struct inode*,struct extent_position*,struct kernel_lb_addr*,int*,int ) ;
 int udf_get_lb_pblock (struct super_block*,struct kernel_lb_addr*,int ) ;
 int udf_new_tag (scalar_t__,int ,int,int,int ,int) ;
 struct buffer_head* udf_tgetblk (struct super_block*,int ) ;
 int udf_write_aext (struct inode*,struct extent_position*,struct kernel_lb_addr*,int,int ) ;
 int unlock_buffer (struct buffer_head*) ;

int udf_setup_indirect_aext(struct inode *inode, udf_pblk_t block,
       struct extent_position *epos)
{
 struct super_block *sb = inode->i_sb;
 struct buffer_head *bh;
 struct allocExtDesc *aed;
 struct extent_position nepos;
 struct kernel_lb_addr neloc;
 int ver, adsize;

 if (UDF_I(inode)->i_alloc_type == ICBTAG_FLAG_AD_SHORT)
  adsize = sizeof(struct short_ad);
 else if (UDF_I(inode)->i_alloc_type == ICBTAG_FLAG_AD_LONG)
  adsize = sizeof(struct long_ad);
 else
  return -EIO;

 neloc.logicalBlockNum = block;
 neloc.partitionReferenceNum = epos->block.partitionReferenceNum;

 bh = udf_tgetblk(sb, udf_get_lb_pblock(sb, &neloc, 0));
 if (!bh)
  return -EIO;
 lock_buffer(bh);
 memset(bh->b_data, 0x00, sb->s_blocksize);
 set_buffer_uptodate(bh);
 unlock_buffer(bh);
 mark_buffer_dirty_inode(bh, inode);

 aed = (struct allocExtDesc *)(bh->b_data);
 if (!UDF_QUERY_FLAG(sb, UDF_FLAG_STRICT)) {
  aed->previousAllocExtLocation =
    cpu_to_le32(epos->block.logicalBlockNum);
 }
 aed->lengthAllocDescs = cpu_to_le32(0);
 if (UDF_SB(sb)->s_udfrev >= 0x0200)
  ver = 3;
 else
  ver = 2;
 udf_new_tag(bh->b_data, TAG_IDENT_AED, ver, 1, block,
      sizeof(struct tag));

 nepos.block = neloc;
 nepos.offset = sizeof(struct allocExtDesc);
 nepos.bh = bh;





 if (epos->offset + adsize > sb->s_blocksize) {
  struct kernel_lb_addr cp_loc;
  uint32_t cp_len;
  int cp_type;

  epos->offset -= adsize;
  cp_type = udf_current_aext(inode, epos, &cp_loc, &cp_len, 0);
  cp_len |= ((uint32_t)cp_type) << 30;

  __udf_add_aext(inode, &nepos, &cp_loc, cp_len, 1);
  udf_write_aext(inode, epos, &nepos.block,
          sb->s_blocksize | EXT_NEXT_EXTENT_ALLOCDECS, 0);
 } else {
  __udf_add_aext(inode, epos, &nepos.block,
          sb->s_blocksize | EXT_NEXT_EXTENT_ALLOCDECS, 0);
 }

 brelse(epos->bh);
 *epos = nepos;

 return 0;
}
