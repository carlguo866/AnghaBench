
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_set_multivar_in_file (char const*,char const*,char const*,int *,int ) ;

void git_config_set_in_file(const char *config_filename,
       const char *key, const char *value)
{
 git_config_set_multivar_in_file(config_filename, key, value, ((void*)0), 0);
}
