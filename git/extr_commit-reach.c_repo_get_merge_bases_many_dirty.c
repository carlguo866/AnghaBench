
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;


 struct commit_list* get_merge_bases_many_0 (struct repository*,struct commit*,int,struct commit**,int ) ;

struct commit_list *repo_get_merge_bases_many_dirty(struct repository *r,
          struct commit *one,
          int n,
          struct commit **twos)
{
 return get_merge_bases_many_0(r, one, n, twos, 0);
}
