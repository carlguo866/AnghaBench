
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_REFS_REMOTES_DIR ;
 scalar_t__ git__prefixcmp (char const*,int ) ;

int git_reference__is_remote(const char *ref_name)
{
 return git__prefixcmp(ref_name, GIT_REFS_REMOTES_DIR) == 0;
}
