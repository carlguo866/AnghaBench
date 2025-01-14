
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t count; char** strings; int member_0; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_repository ;
typedef int git_remote ;
typedef int git_refspec ;
typedef int git_buf ;


 int GIT_EAMBIGUOUS ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR ;
 int GIT_ERROR_INVALID ;
 int GIT_ERROR_REFERENCE ;
 int assert (int ) ;
 int git_buf_clear (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_puts (int *,char*) ;
 int git_buf_sanitize (int *) ;
 int git_error_set (int ,char*,char const*) ;
 int git_reference__is_remote (char const*) ;
 int * git_remote__matching_dst_refspec (int *,char const*) ;
 int git_remote_free (int *) ;
 int git_remote_list (TYPE_1__*,int *) ;
 int git_remote_lookup (int **,int *,char*) ;
 int git_strarray_free (TYPE_1__*) ;

int git_branch_remote_name(git_buf *buf, git_repository *repo, const char *refname)
{
 git_strarray remote_list = {0};
 size_t i;
 git_remote *remote;
 const git_refspec *fetchspec;
 int error = 0;
 char *remote_name = ((void*)0);

 assert(buf && repo && refname);

 git_buf_sanitize(buf);


 if (!git_reference__is_remote(refname)) {
  git_error_set(GIT_ERROR_INVALID, "reference '%s' is not a remote branch.",
   refname);
  error = GIT_ERROR;
  goto cleanup;
 }


 if ((error = git_remote_list(&remote_list, repo)) < 0)
  goto cleanup;


 for (i = 0; i < remote_list.count; i++) {
  if ((error = git_remote_lookup(&remote, repo, remote_list.strings[i])) < 0)
   continue;

  fetchspec = git_remote__matching_dst_refspec(remote, refname);
  if (fetchspec) {




   if (!remote_name) {
    remote_name = remote_list.strings[i];
   } else {
    git_remote_free(remote);

    git_error_set(GIT_ERROR_REFERENCE,
     "reference '%s' is ambiguous", refname);
    error = GIT_EAMBIGUOUS;
    goto cleanup;
   }
  }

  git_remote_free(remote);
 }

 if (remote_name) {
  git_buf_clear(buf);
  error = git_buf_puts(buf, remote_name);
 } else {
  git_error_set(GIT_ERROR_REFERENCE,
   "could not determine remote for '%s'", refname);
  error = GIT_ENOTFOUND;
 }

cleanup:
 if (error < 0)
  git_buf_dispose(buf);

 git_strarray_free(&remote_list);
 return error;
}
