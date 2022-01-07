
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int _repo2 ;
 int cl_assert_equal_sz (size_t,int) ;
 int cl_git_pass (int ) ;
 int git_graph_ahead_behind (size_t*,size_t*,int ,int *,int *) ;
 int git_oid_fromstr (int *,char*) ;

void test_revwalk_mergebase__two_way_merge(void)
{
 git_oid one, two;
 size_t ahead, behind;

 cl_git_pass(git_oid_fromstr(&one, "9b219343610c88a1187c996d0dc58330b55cee28"));
 cl_git_pass(git_oid_fromstr(&two, "a953a018c5b10b20c86e69fef55ebc8ad4c5a417"));
 cl_git_pass(git_graph_ahead_behind(&ahead, &behind, _repo2, &one, &two));

 cl_assert_equal_sz(ahead, 8);
 cl_assert_equal_sz(behind, 2);

 cl_git_pass(git_graph_ahead_behind(&ahead, &behind, _repo2, &two, &one));

 cl_assert_equal_sz(ahead, 2);
 cl_assert_equal_sz(behind, 8);
}
