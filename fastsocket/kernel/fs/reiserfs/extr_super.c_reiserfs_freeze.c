
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; scalar_t__ s_dirt; } ;
struct reiserfs_transaction_handle {int dummy; } ;


 int MS_RDONLY ;
 int SB_BUFFER_WITH_SB (struct super_block*) ;
 int journal_begin (struct reiserfs_transaction_handle*,struct super_block*,int) ;
 int journal_end_sync (struct reiserfs_transaction_handle*,struct super_block*,int) ;
 int journal_mark_dirty (struct reiserfs_transaction_handle*,struct super_block*,int ) ;
 int reiserfs_block_writes (struct reiserfs_transaction_handle*) ;
 int reiserfs_prepare_for_journal (struct super_block*,int ,int) ;
 int reiserfs_write_lock (struct super_block*) ;
 int reiserfs_write_unlock (struct super_block*) ;

__attribute__((used)) static int reiserfs_freeze(struct super_block *s)
{
 struct reiserfs_transaction_handle th;
 reiserfs_write_lock(s);
 if (!(s->s_flags & MS_RDONLY)) {
  int err = journal_begin(&th, s, 1);
  if (err) {
   reiserfs_block_writes(&th);
  } else {
   reiserfs_prepare_for_journal(s, SB_BUFFER_WITH_SB(s),
           1);
   journal_mark_dirty(&th, s, SB_BUFFER_WITH_SB(s));
   reiserfs_block_writes(&th);
   journal_end_sync(&th, s, 1);
  }
 }
 s->s_dirt = 0;
 reiserfs_write_unlock(s);
 return 0;
}
