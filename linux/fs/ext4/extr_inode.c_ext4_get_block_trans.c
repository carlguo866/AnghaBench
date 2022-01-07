
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_blkbits; int i_sb; } ;
struct buffer_head {int b_size; } ;
typedef int sector_t ;
typedef int handle_t ;


 int DIO_MAX_BLOCKS ;
 int ENOSPC ;
 int EXT4_HT_MAP_BLOCKS ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int _ext4_get_block (struct inode*,int ,struct buffer_head*,int) ;
 int ext4_chunk_trans_blocks (struct inode*,int) ;
 int * ext4_journal_start (struct inode*,int ,int) ;
 int ext4_journal_stop (int *) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;

__attribute__((used)) static int ext4_get_block_trans(struct inode *inode, sector_t iblock,
    struct buffer_head *bh_result, int flags)
{
 int dio_credits;
 handle_t *handle;
 int retries = 0;
 int ret;


 if (bh_result->b_size >> inode->i_blkbits > DIO_MAX_BLOCKS)
  bh_result->b_size = DIO_MAX_BLOCKS << inode->i_blkbits;
 dio_credits = ext4_chunk_trans_blocks(inode,
          bh_result->b_size >> inode->i_blkbits);
retry:
 handle = ext4_journal_start(inode, EXT4_HT_MAP_BLOCKS, dio_credits);
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 ret = _ext4_get_block(inode, iblock, bh_result, flags);
 ext4_journal_stop(handle);

 if (ret == -ENOSPC && ext4_should_retry_alloc(inode->i_sb, &retries))
  goto retry;
 return ret;
}
