
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_4__ {int signing_cb; } ;
typedef TYPE_1__ git_rebase_options ;
typedef int git_rebase_operation ;
typedef int git_rebase ;
typedef int git_oid ;
typedef int git_commit ;
typedef int git_annotated_commit ;


 int GIT_ITEROVER ;
 TYPE_1__ GIT_REBASE_OPTIONS_INIT ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_raw_header (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_rebase_commit (int *,int *,int *,int ,int *,int *) ;
 int git_rebase_free (int *) ;
 int git_rebase_init (int **,int ,int *,int *,int *,TYPE_1__*) ;
 int git_rebase_next (int **,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int repo ;
 int signature ;
 int signing_cb_passthrough ;

void test_rebase_sign__passthrough_signing_cb(void)
{
 git_rebase *rebase;
 git_reference *branch_ref, *upstream_ref;
 git_annotated_commit *branch_head, *upstream_head;
 git_rebase_operation *rebase_operation;
 git_oid commit_id, expected_id;
 git_rebase_options rebase_opts = GIT_REBASE_OPTIONS_INIT;
 git_commit *commit;
 const char *expected_commit_raw_header = "tree cd99b26250099fc38d30bfaed7797a7275ed3366\nparent f87d14a4a236582a0278a916340a793714256864\nauthor Edward Thomson <ethomson@edwardthomson.com> 1405625055 -0400\ncommitter Rebaser <rebaser@rebaser.rb> 1405694510 +0000\n";




 rebase_opts.signing_cb = signing_cb_passthrough;

 cl_git_pass(git_reference_lookup(&branch_ref, repo, "refs/heads/gravy"));
 cl_git_pass(git_reference_lookup(&upstream_ref, repo, "refs/heads/veal"));

 cl_git_pass(git_annotated_commit_from_ref(&branch_head, repo, branch_ref));
 cl_git_pass(git_annotated_commit_from_ref(&upstream_head, repo, upstream_ref));

 cl_git_pass(git_rebase_init(&rebase, repo, branch_head, upstream_head, ((void*)0), &rebase_opts));

 cl_git_pass(git_rebase_next(&rebase_operation, rebase));
 cl_git_pass(git_rebase_commit(&commit_id, rebase, ((void*)0), signature, ((void*)0), ((void*)0)));

 git_oid_fromstr(&expected_id, "129183968a65abd6c52da35bff43325001bfc630");
 cl_assert_equal_oid(&expected_id, &commit_id);

 cl_git_pass(git_commit_lookup(&commit, repo, &commit_id));
 cl_assert_equal_s(expected_commit_raw_header, git_commit_raw_header(commit));

 cl_git_fail_with(GIT_ITEROVER, git_rebase_next(&rebase_operation, rebase));

 git_reference_free(branch_ref);
 git_reference_free(upstream_ref);
 git_annotated_commit_free(branch_head);
 git_annotated_commit_free(upstream_head);
 git_commit_free(commit);
 git_rebase_free(rebase);
}
