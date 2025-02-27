
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_object ;


 int GIT_ENOTFOUND ;
 size_t GIT_OID_HEXSZ ;
 int maybe_sha_or_abbrev (int **,int *,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int maybe_sha(git_object** out, git_repository *repo, const char *spec)
{
 size_t speclen = strlen(spec);

 if (speclen != GIT_OID_HEXSZ)
  return GIT_ENOTFOUND;

 return maybe_sha_or_abbrev(out, repo, spec, speclen);
}
