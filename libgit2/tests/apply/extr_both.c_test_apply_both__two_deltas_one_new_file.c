
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_diff ;
typedef int both_expected ;


 int DIFF_TWO_DELTAS_ONE_NEW_FILE ;
 int GIT_APPLY_LOCATION_BOTH ;
 int cl_git_pass (int ) ;
 int git_apply (int ,int *,int ,int *) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,int ,int ) ;
 int repo ;
 int strlen (int ) ;
 int validate_apply_index (int ,struct merge_index_entry*,size_t) ;
 int validate_apply_workdir (int ,struct merge_index_entry*,size_t) ;

void test_apply_both__two_deltas_one_new_file(void)
{
 git_diff *diff;

 struct merge_index_entry both_expected[] = {
  { 0100644, "f51658077d85f2264fa179b4d0848268cb3475c3", 0, "asparagus.txt" },
  { 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
  { 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
  { 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
  { 0100644, "08d4c445cf0078f3d9b604b82f32f4d87e083325", 0, "newfile.txt" },
  { 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
  { 0100644, "94d2c01087f48213bd157222d54edfefd77c9bba", 0, "veal.txt" }
 };
 size_t both_expected_cnt = sizeof(both_expected) /
  sizeof(struct merge_index_entry);

 cl_git_pass(git_diff_from_buffer(&diff, DIFF_TWO_DELTAS_ONE_NEW_FILE,
  strlen(DIFF_TWO_DELTAS_ONE_NEW_FILE)));
 cl_git_pass(git_apply(repo, diff, GIT_APPLY_LOCATION_BOTH, ((void*)0)));

 validate_apply_index(repo, both_expected, both_expected_cnt);
 validate_apply_workdir(repo, both_expected, both_expected_cnt);

 git_diff_free(diff);
}
