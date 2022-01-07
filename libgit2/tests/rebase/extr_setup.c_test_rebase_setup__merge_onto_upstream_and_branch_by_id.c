
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_reference ;
typedef int git_rebase ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;
typedef int git_annotated_commit ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_OBJECT_COMMIT ;
 int GIT_REPOSITORY_STATE_NONE ;
 int GIT_REPOSITORY_STATE_REBASE_MERGE ;
 int cl_assert_equal_file (char*,int,char*) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_oid (int *,int ) ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_lookup (int **,int ,int *) ;
 int git_checkout_head (int ,TYPE_1__*) ;
 int git_commit_free (int *) ;
 int git_commit_id (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_rebase_free (int *) ;
 int git_rebase_init (int **,int ,int *,int *,int *,int *) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_repository_set_head (int ,char*) ;
 int git_repository_state (int ) ;
 int repo ;

void test_rebase_setup__merge_onto_upstream_and_branch_by_id(void)
{
 git_rebase *rebase;
 git_oid upstream_id, branch_id, onto_id;
 git_annotated_commit *upstream_head, *branch_head, *onto_head;
 git_reference *head;
 git_commit *head_commit;
 git_oid head_id;
 git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;

 checkout_opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_assert_equal_i(GIT_REPOSITORY_STATE_NONE, git_repository_state(repo));

 cl_git_pass(git_repository_set_head(repo, "refs/heads/beef"));
 cl_git_pass(git_checkout_head(repo, &checkout_opts));

 cl_git_pass(git_oid_fromstr(&upstream_id, "f87d14a4a236582a0278a916340a793714256864"));
 cl_git_pass(git_oid_fromstr(&branch_id, "d616d97082eb7bb2dc6f180a7cca940993b7a56f"));
 cl_git_pass(git_oid_fromstr(&onto_id, "efad0b11c47cb2f0220cbd6f5b0f93bb99064b00"));

 cl_git_pass(git_annotated_commit_lookup(&upstream_head, repo, &upstream_id));
 cl_git_pass(git_annotated_commit_lookup(&branch_head, repo, &branch_id));
 cl_git_pass(git_annotated_commit_lookup(&onto_head, repo, &onto_id));

 cl_git_pass(git_rebase_init(&rebase, repo, branch_head, upstream_head, onto_head, ((void*)0)));

 git_oid_fromstr(&head_id, "efad0b11c47cb2f0220cbd6f5b0f93bb99064b00");
 cl_git_pass(git_repository_head(&head, repo));
 cl_git_pass(git_reference_peel((git_object **)&head_commit, head, GIT_OBJECT_COMMIT));
 cl_assert_equal_oid(&head_id, git_commit_id(head_commit));

 cl_assert_equal_file("d616d97082eb7bb2dc6f180a7cca940993b7a56f\n", 41, "rebase/.git/ORIG_HEAD");

 cl_assert_equal_i(GIT_REPOSITORY_STATE_REBASE_MERGE, git_repository_state(repo));

 cl_assert_equal_file("d616d97082eb7bb2dc6f180a7cca940993b7a56f\n", 41, "rebase/.git/rebase-merge/cmt.1");
 cl_assert_equal_file("1\n", 2, "rebase/.git/rebase-merge/end");
 cl_assert_equal_file("efad0b11c47cb2f0220cbd6f5b0f93bb99064b00\n", 41, "rebase/.git/rebase-merge/onto");
 cl_assert_equal_file("efad0b11c47cb2f0220cbd6f5b0f93bb99064b00\n", 41, "rebase/.git/rebase-merge/onto_name");
 cl_assert_equal_file("d616d97082eb7bb2dc6f180a7cca940993b7a56f\n", 41, "rebase/.git/rebase-merge/orig-head");

 git_commit_free(head_commit);
 git_reference_free(head);
 git_annotated_commit_free(upstream_head);
 git_annotated_commit_free(branch_head);
 git_annotated_commit_free(onto_head);
 git_rebase_free(rebase);
}
