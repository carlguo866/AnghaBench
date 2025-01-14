
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int git_repository ;
struct TYPE_5__ {int flags; int path; } ;
typedef TYPE_1__ git_filter_source ;
struct TYPE_6__ {size_t nattrs; char** attrs; int nmatches; } ;
typedef TYPE_2__ git_filter_def ;
typedef scalar_t__ git_attr_value_t ;
typedef int git_attr_session ;


 int GIT_ATTR_CHECK_INCLUDE_HEAD ;
 int GIT_ATTR_CHECK_NO_SYSTEM ;
 scalar_t__ GIT_ATTR_VALUE_STRING ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_CHECK_ALLOC (char const**) ;
 int GIT_FILTER_ATTRIBUTES_FROM_HEAD ;
 int GIT_FILTER_NO_SYSTEM_ATTRIBUTES ;
 char** git__calloc (size_t,int) ;
 int git__free (void*) ;
 int git_attr_get_many_with_session (char const**,int *,int *,int ,int ,size_t,char**) ;
 scalar_t__ git_attr_value (char const*) ;
 int git_error_clear () ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int filter_list_check_attributes(
 const char ***out,
 git_repository *repo,
 git_attr_session *attr_session,
 git_filter_def *fdef,
 const git_filter_source *src)
{
 const char **strs = git__calloc(fdef->nattrs, sizeof(const char *));
 uint32_t flags = 0;
 size_t i;
 int error;

 GIT_ERROR_CHECK_ALLOC(strs);

 if ((src->flags & GIT_FILTER_NO_SYSTEM_ATTRIBUTES) != 0)
  flags |= GIT_ATTR_CHECK_NO_SYSTEM;

 if ((src->flags & GIT_FILTER_ATTRIBUTES_FROM_HEAD) != 0)
  flags |= GIT_ATTR_CHECK_INCLUDE_HEAD;

 error = git_attr_get_many_with_session(
  strs, repo, attr_session, flags, src->path, fdef->nattrs, fdef->attrs);


 if (error == GIT_ENOTFOUND && !fdef->nmatches) {
  git_error_clear();
  git__free((void *)strs);
  return 0;
 }

 for (i = 0; !error && i < fdef->nattrs; ++i) {
  const char *want = fdef->attrs[fdef->nattrs + i];
  git_attr_value_t want_type, found_type;

  if (!want)
   continue;

  want_type = git_attr_value(want);
  found_type = git_attr_value(strs[i]);

  if (want_type != found_type)
   error = GIT_ENOTFOUND;
  else if (want_type == GIT_ATTR_VALUE_STRING &&
    strcmp(want, strs[i]) &&
    strcmp(want, "*"))
   error = GIT_ENOTFOUND;
 }

 if (error)
  git__free((void *)strs);
 else
  *out = strs;

 return error;
}
