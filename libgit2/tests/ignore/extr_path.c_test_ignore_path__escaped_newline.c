
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_rewritefile (char*,char*) ;

void test_ignore_path__escaped_newline(void)
{
 cl_git_rewritefile(
  "attr/.gitignore",
  "\\\nnewline\n"
 );

 assert_is_ignored(1, "\nnewline");
}
