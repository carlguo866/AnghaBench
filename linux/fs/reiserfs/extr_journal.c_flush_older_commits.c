
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct list_head {struct list_head* next; struct list_head* prev; } ;
struct reiserfs_journal_list {unsigned int j_trans_id; int j_commit_left; struct list_head j_list; int j_older_commits_done; } ;
struct reiserfs_journal {struct list_head j_journal_list; } ;


 struct reiserfs_journal_list* JOURNAL_LIST_ENTRY (struct list_head*) ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 scalar_t__ atomic_read (int *) ;
 int flush_commit_list (struct super_block*,struct reiserfs_journal_list*,int ) ;
 int journal_list_still_alive (struct super_block*,unsigned int) ;

__attribute__((used)) static int flush_older_commits(struct super_block *s,
          struct reiserfs_journal_list *jl)
{
 struct reiserfs_journal *journal = SB_JOURNAL(s);
 struct reiserfs_journal_list *other_jl;
 struct reiserfs_journal_list *first_jl;
 struct list_head *entry;
 unsigned int trans_id = jl->j_trans_id;
 unsigned int other_trans_id;

find_first:



 first_jl = jl;
 entry = jl->j_list.prev;
 while (1) {
  other_jl = JOURNAL_LIST_ENTRY(entry);
  if (entry == &journal->j_journal_list ||
      atomic_read(&other_jl->j_older_commits_done))
   break;

  first_jl = other_jl;
  entry = other_jl->j_list.prev;
 }


 if (first_jl == jl) {
  return 0;
 }

 entry = &first_jl->j_list;
 while (1) {
  other_jl = JOURNAL_LIST_ENTRY(entry);
  other_trans_id = other_jl->j_trans_id;

  if (other_trans_id < trans_id) {
   if (atomic_read(&other_jl->j_commit_left) != 0) {
    flush_commit_list(s, other_jl, 0);


    if (!journal_list_still_alive(s, trans_id))
     return 1;







    if (!journal_list_still_alive
        (s, other_trans_id)) {
     goto find_first;
    }
   }
   entry = entry->next;
   if (entry == &journal->j_journal_list)
    return 0;
  } else {
   return 0;
  }
 }
 return 0;
}
