
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct jbd2_revoke_table_s {int hash_shift; int hash_size; } ;
struct TYPE_3__ {struct jbd2_revoke_table_s* j_revoke; } ;
typedef TYPE_1__ journal_t ;



__attribute__((used)) static inline int hash(journal_t *journal, unsigned long long block)
{
 struct jbd2_revoke_table_s *table = journal->j_revoke;
 int hash_shift = table->hash_shift;
 int hash = (int)block ^ (int)((block >> 31) >> 1);

 return ((hash << (hash_shift - 6)) ^
  (hash >> 13) ^
  (hash << (hash_shift - 12))) & (table->hash_size - 1);
}
