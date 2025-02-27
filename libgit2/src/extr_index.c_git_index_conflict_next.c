
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_index_entry ;
struct TYPE_7__ {scalar_t__ cur; TYPE_3__* index; } ;
typedef TYPE_2__ git_index_conflict_iterator ;
struct TYPE_6__ {scalar_t__ length; } ;
struct TYPE_8__ {TYPE_1__ entries; } ;


 int GIT_ITEROVER ;
 int assert (int ) ;
 scalar_t__ git_index_entry_is_conflict (int const*) ;
 int * git_index_get_byindex (TYPE_3__*,scalar_t__) ;
 int index_conflict__get_byindex (int const**,int const**,int const**,TYPE_3__*,scalar_t__) ;

int git_index_conflict_next(
 const git_index_entry **ancestor_out,
 const git_index_entry **our_out,
 const git_index_entry **their_out,
 git_index_conflict_iterator *iterator)
{
 const git_index_entry *entry;
 int len;

 assert(ancestor_out && our_out && their_out && iterator);

 *ancestor_out = ((void*)0);
 *our_out = ((void*)0);
 *their_out = ((void*)0);

 while (iterator->cur < iterator->index->entries.length) {
  entry = git_index_get_byindex(iterator->index, iterator->cur);

  if (git_index_entry_is_conflict(entry)) {
   if ((len = index_conflict__get_byindex(
    ancestor_out,
    our_out,
    their_out,
    iterator->index,
    iterator->cur)) < 0)
    return len;

   iterator->cur += len;
   return 0;
  }

  iterator->cur++;
 }

 return GIT_ITEROVER;
}
