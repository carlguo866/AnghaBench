
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backend ;
 int cl_git_pass (int ) ;
 int git_config_backend_from_string (int *,char const*,int ) ;
 int git_config_backend_open (int ,int ,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static void setup_backend(const char *cfg)
{
 cl_git_pass(git_config_backend_from_string(&backend, cfg, strlen(cfg)));
 cl_git_pass(git_config_backend_open(backend, 0, ((void*)0)));
}
