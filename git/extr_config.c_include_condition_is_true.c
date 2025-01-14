
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_options {int dummy; } ;


 int include_by_branch (char const*,size_t) ;
 int include_by_gitdir (struct config_options const*,char const*,size_t,int) ;
 scalar_t__ skip_prefix_mem (char const*,size_t,char*,char const**,size_t*) ;

__attribute__((used)) static int include_condition_is_true(const struct config_options *opts,
         const char *cond, size_t cond_len)
{

 if (skip_prefix_mem(cond, cond_len, "gitdir:", &cond, &cond_len))
  return include_by_gitdir(opts, cond, cond_len, 0);
 else if (skip_prefix_mem(cond, cond_len, "gitdir/i:", &cond, &cond_len))
  return include_by_gitdir(opts, cond, cond_len, 1);
 else if (skip_prefix_mem(cond, cond_len, "onbranch:", &cond, &cond_len))
  return include_by_branch(cond, cond_len);


 return 0;
}
