
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _repo ;
 int cl_git_sandbox_init (char*) ;

void test_repo_message__initialize(void)
{
 _repo = cl_git_sandbox_init("testrepo.git");
}
