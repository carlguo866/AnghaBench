
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_19__ ;


struct TYPE_24__ {TYPE_4__* ref; } ;
typedef TYPE_2__ git_worktree_add_options ;
typedef int git_worktree ;
struct TYPE_25__ {int workdir; } ;
typedef TYPE_3__ git_repository ;
struct TYPE_23__ {int oid; } ;
struct TYPE_26__ {TYPE_1__ target; } ;
typedef TYPE_4__ git_reference ;
typedef int git_commit ;
struct TYPE_27__ {int ptr; } ;
typedef TYPE_5__ git_buf ;
struct TYPE_22__ {TYPE_3__* repo; } ;


 TYPE_5__ GIT_BUF_INIT ;
 TYPE_2__ GIT_WORKTREE_ADD_OPTIONS_INIT ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 TYPE_19__ fixture ;
 int git_branch_create (TYPE_4__**,TYPE_3__*,char*,int *,int) ;
 int git_buf_dispose (TYPE_5__*) ;
 int git_buf_joinpath (TYPE_5__*,int ,char*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,TYPE_3__*,int *) ;
 int git_reference_free (TYPE_4__*) ;
 int git_reference_name (TYPE_4__*) ;
 int git_repository_free (TYPE_3__*) ;
 int git_repository_head (TYPE_4__**,TYPE_3__*) ;
 int git_repository_open_from_worktree (TYPE_3__**,int *) ;
 int git_worktree_add (int **,TYPE_3__*,char*,int ,TYPE_2__*) ;
 int git_worktree_free (int *) ;

void test_worktree_worktree__add_with_explicit_branch(void)
{
 git_reference *head, *branch, *wthead;
 git_commit *commit;
 git_worktree *wt;
 git_repository *wtrepo;
 git_buf path = GIT_BUF_INIT;
 git_worktree_add_options opts = GIT_WORKTREE_ADD_OPTIONS_INIT;

 cl_git_pass(git_repository_head(&head, fixture.repo));
 cl_git_pass(git_commit_lookup(&commit, fixture.repo, &head->target.oid));
 cl_git_pass(git_branch_create(&branch, fixture.repo, "worktree-with-ref", commit, 0));

 opts.ref = branch;

 cl_git_pass(git_buf_joinpath(&path, fixture.repo->workdir, "../worktree-with-different-name"));
 cl_git_pass(git_worktree_add(&wt, fixture.repo, "worktree-with-different-name", path.ptr, &opts));
 cl_git_pass(git_repository_open_from_worktree(&wtrepo, wt));
 cl_git_pass(git_repository_head(&wthead, wtrepo));
 cl_assert_equal_s(git_reference_name(wthead), "refs/heads/worktree-with-ref");

 git_buf_dispose(&path);
 git_commit_free(commit);
 git_reference_free(head);
 git_reference_free(branch);
 git_reference_free(wthead);
 git_repository_free(wtrepo);
 git_worktree_free(wt);
}
