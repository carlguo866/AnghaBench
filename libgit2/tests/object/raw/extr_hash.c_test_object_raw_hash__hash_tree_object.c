
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int hash_object_pass (int *,int *) ;
 int tree_id ;
 int tree_obj ;

void test_object_raw_hash__hash_tree_object(void)
{
 git_oid id1, id2;

 cl_git_pass(git_oid_fromstr(&id1, tree_id));
 hash_object_pass(&id2, &tree_obj);
 cl_assert(git_oid_cmp(&id1, &id2) == 0);
}
