
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_merge_options ;


 int git_merge_options_init (int *,unsigned int) ;

int git_merge_init_options(git_merge_options *opts, unsigned int version)
{
 return git_merge_options_init(opts, version);
}
