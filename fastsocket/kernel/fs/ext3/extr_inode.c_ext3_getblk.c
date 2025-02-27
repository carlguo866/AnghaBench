
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int b_blocknr; int b_data; int b_history; scalar_t__ b_state; } ;
typedef int handle_t ;
struct TYPE_2__ {int s_blocksize; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EIO ;
 int J_ASSERT (int) ;
 int WARN_ON (int) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_new (struct buffer_head*) ;
 int buffer_trace_init (int *) ;
 int buffer_uptodate (struct buffer_head*) ;
 int ext3_get_blocks_handle (int *,struct inode*,long,int,struct buffer_head*,int) ;
 int ext3_journal_dirty_metadata (int *,struct buffer_head*) ;
 int ext3_journal_get_create_access (int *,struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int memset (int ,int ,int ) ;
 struct buffer_head* sb_getblk (TYPE_1__*,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

struct buffer_head *ext3_getblk(handle_t *handle, struct inode *inode,
    long block, int create, int *errp)
{
 struct buffer_head dummy;
 int fatal = 0, err;

 J_ASSERT(handle != ((void*)0) || create == 0);

 dummy.b_state = 0;
 dummy.b_blocknr = -1000;
 buffer_trace_init(&dummy.b_history);
 err = ext3_get_blocks_handle(handle, inode, block, 1,
     &dummy, create);




 if (err > 0) {
  if (err > 1)
   WARN_ON(1);
  err = 0;
 }
 *errp = err;
 if (!err && buffer_mapped(&dummy)) {
  struct buffer_head *bh;
  bh = sb_getblk(inode->i_sb, dummy.b_blocknr);
  if (!bh) {
   *errp = -EIO;
   goto err;
  }
  if (buffer_new(&dummy)) {
   J_ASSERT(create != 0);
   J_ASSERT(handle != ((void*)0));
   lock_buffer(bh);
   BUFFER_TRACE(bh, "call get_create_access");
   fatal = ext3_journal_get_create_access(handle, bh);
   if (!fatal && !buffer_uptodate(bh)) {
    memset(bh->b_data,0,inode->i_sb->s_blocksize);
    set_buffer_uptodate(bh);
   }
   unlock_buffer(bh);
   BUFFER_TRACE(bh, "call ext3_journal_dirty_metadata");
   err = ext3_journal_dirty_metadata(handle, bh);
   if (!fatal)
    fatal = err;
  } else {
   BUFFER_TRACE(bh, "not a new buffer");
  }
  if (fatal) {
   *errp = fatal;
   brelse(bh);
   bh = ((void*)0);
  }
  return bh;
 }
err:
 return ((void*)0);
}
