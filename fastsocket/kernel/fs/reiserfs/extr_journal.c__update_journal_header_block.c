
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_journal_header {void* j_mount_id; void* j_first_unflushed_offset; void* j_last_flush_trans_id; } ;
struct reiserfs_journal {unsigned int j_last_flush_trans_id; unsigned long j_first_unflushed_offset; unsigned long j_mount_id; TYPE_1__* j_header_bh; } ;
struct TYPE_10__ {scalar_t__ b_data; } ;


 int EIO ;
 int EOPNOTSUPP ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 scalar_t__ buffer_locked (TYPE_1__*) ;
 int buffer_uptodate (TYPE_1__*) ;
 int check_barrier_completion (struct super_block*,TYPE_1__*) ;
 void* cpu_to_le32 (unsigned long) ;
 int disable_barrier (struct super_block*) ;
 int lock_buffer (TYPE_1__*) ;
 scalar_t__ reiserfs_barrier_flush (struct super_block*) ;
 scalar_t__ reiserfs_is_journal_aborted (struct reiserfs_journal*) ;
 int reiserfs_warning (struct super_block*,char*,char*) ;
 int set_buffer_dirty (TYPE_1__*) ;
 int set_buffer_uptodate (TYPE_1__*) ;
 int submit_barrier_buffer (TYPE_1__*) ;
 int sync_dirty_buffer (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;
 int wait_on_buffer (TYPE_1__*) ;

__attribute__((used)) static int _update_journal_header_block(struct super_block *sb,
     unsigned long offset,
     unsigned int trans_id)
{
 struct reiserfs_journal_header *jh;
 struct reiserfs_journal *journal = SB_JOURNAL(sb);

 if (reiserfs_is_journal_aborted(journal))
  return -EIO;

 if (trans_id >= journal->j_last_flush_trans_id) {
  if (buffer_locked((journal->j_header_bh))) {
   wait_on_buffer((journal->j_header_bh));
   if (unlikely(!buffer_uptodate(journal->j_header_bh))) {




    return -EIO;
   }
  }
  journal->j_last_flush_trans_id = trans_id;
  journal->j_first_unflushed_offset = offset;
  jh = (struct reiserfs_journal_header *)(journal->j_header_bh->
       b_data);
  jh->j_last_flush_trans_id = cpu_to_le32(trans_id);
  jh->j_first_unflushed_offset = cpu_to_le32(offset);
  jh->j_mount_id = cpu_to_le32(journal->j_mount_id);

  if (reiserfs_barrier_flush(sb)) {
   int ret;
   lock_buffer(journal->j_header_bh);
   ret = submit_barrier_buffer(journal->j_header_bh);
   if (ret == -EOPNOTSUPP) {
    set_buffer_uptodate(journal->j_header_bh);
    disable_barrier(sb);
    goto sync;
   }
   wait_on_buffer(journal->j_header_bh);
   check_barrier_completion(sb, journal->j_header_bh);
  } else {
        sync:
   set_buffer_dirty(journal->j_header_bh);
   sync_dirty_buffer(journal->j_header_bh);
  }
  if (!buffer_uptodate(journal->j_header_bh)) {
   reiserfs_warning(sb, "journal-837",
      "IO error during journal replay");
   return -EIO;
  }
 }
 return 0;
}
