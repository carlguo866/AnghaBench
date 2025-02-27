
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_revwalk ;
typedef int git_repository ;
typedef int git_oid ;
struct TYPE_6__ {TYPE_1__* item; } ;
typedef TYPE_2__ git_commit_list ;
struct TYPE_5__ {int oid; } ;


 int assert (int ) ;
 int git_commit_list_free (TYPE_2__**) ;
 int git_oid_cpy (int *,int *) ;
 int git_revwalk_free (int *) ;
 int merge_bases_many (TYPE_2__**,int **,int *,size_t,int const*) ;

int git_merge_base_many(git_oid *out, git_repository *repo, size_t length, const git_oid input_array[])
{
 git_revwalk *walk;
 git_commit_list *result = ((void*)0);
 int error = 0;

 assert(out && repo && input_array);

 if ((error = merge_bases_many(&result, &walk, repo, length, input_array)) < 0)
  return error;

 git_oid_cpy(out, &result->item->oid);

 git_commit_list_free(&result);
 git_revwalk_free(walk);

 return 0;
}
