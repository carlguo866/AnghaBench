
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_rebase_options ;
typedef int git_rebase_operation ;
typedef int git_rebase ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_note ;
typedef int git_commit ;
typedef int git_annotated_commit ;


 int GIT_ENOTFOUND ;
 int GIT_OBJECT_COMMIT ;
 int GIT_REPOSITORY_STATE_NONE ;
 int cl_assert_equal_i (int ,int) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_fail (int) ;
 int cl_git_pass (int) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int git_commit_author (int *) ;
 int git_commit_committer (int *) ;
 int git_commit_free (int *) ;
 int git_commit_id (int *) ;
 int git_note_create (int *,int ,char*,int ,int ,int ,char*,int ) ;
 int git_note_free (int *) ;
 int git_note_message (int *) ;
 int git_note_read (int **,int ,char*,int *) ;
 int git_rebase_commit (int *,int *,int *,int ,int *,int *) ;
 int git_rebase_finish (int *,int ) ;
 int git_rebase_free (int *) ;
 int git_rebase_init (int **,int ,int *,int *,int *,int const*) ;
 int git_rebase_next (int **,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_state (int ) ;
 int repo ;
 int signature ;

__attribute__((used)) static void test_copy_note(
 const git_rebase_options *opts,
 bool should_exist)
{
 git_rebase *rebase;
 git_reference *branch_ref, *upstream_ref;
 git_annotated_commit *branch_head, *upstream_head;
 git_commit *branch_commit;
 git_rebase_operation *rebase_operation;
 git_oid note_id, commit_id;
 git_note *note = ((void*)0);
 int error;

 cl_git_pass(git_reference_lookup(&branch_ref, repo, "refs/heads/gravy"));
 cl_git_pass(git_reference_lookup(&upstream_ref, repo, "refs/heads/veal"));

 cl_git_pass(git_annotated_commit_from_ref(&branch_head, repo, branch_ref));
 cl_git_pass(git_annotated_commit_from_ref(&upstream_head, repo, upstream_ref));

 cl_git_pass(git_reference_peel((git_object **)&branch_commit,
  branch_ref, GIT_OBJECT_COMMIT));


 cl_git_pass(git_note_create(&note_id, repo, "refs/notes/test",
  git_commit_author(branch_commit), git_commit_committer(branch_commit),
  git_commit_id(branch_commit),
  "This is a commit note.", 0));

 cl_git_pass(git_rebase_init(&rebase, repo, branch_head, upstream_head, ((void*)0), opts));

 cl_git_pass(git_rebase_next(&rebase_operation, rebase));
 cl_git_pass(git_rebase_commit(&commit_id, rebase, ((void*)0), signature,
  ((void*)0), ((void*)0)));

 cl_git_pass(git_rebase_finish(rebase, signature));

 cl_assert_equal_i(GIT_REPOSITORY_STATE_NONE, git_repository_state(repo));

 if (should_exist) {
  cl_git_pass(git_note_read(&note, repo, "refs/notes/test", &commit_id));
  cl_assert_equal_s("This is a commit note.", git_note_message(note));
 } else {
  cl_git_fail(error =
   git_note_read(&note, repo, "refs/notes/test", &commit_id));
  cl_assert_equal_i(GIT_ENOTFOUND, error);
 }

 git_note_free(note);
 git_commit_free(branch_commit);
 git_annotated_commit_free(branch_head);
 git_annotated_commit_free(upstream_head);
 git_reference_free(branch_ref);
 git_reference_free(upstream_ref);
 git_rebase_free(rebase);
}
