
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct journal_head {int dummy; } ;
struct TYPE_3__ {int j_list_lock; } ;
typedef TYPE_1__ journal_t ;


 int __journal_unfile_buffer (struct journal_head*) ;
 int jbd_lock_bh_state (int ) ;
 int jbd_unlock_bh_state (int ) ;
 int jh2bh (struct journal_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void journal_unfile_buffer(journal_t *journal, struct journal_head *jh)
{
 jbd_lock_bh_state(jh2bh(jh));
 spin_lock(&journal->j_list_lock);
 __journal_unfile_buffer(jh);
 spin_unlock(&journal->j_list_lock);
 jbd_unlock_bh_state(jh2bh(jh));
}
