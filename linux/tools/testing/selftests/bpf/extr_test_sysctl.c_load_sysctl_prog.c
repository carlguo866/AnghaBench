
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_test {scalar_t__ prog_file; } ;


 int load_sysctl_prog_file (struct sysctl_test*) ;
 int load_sysctl_prog_insns (struct sysctl_test*,char const*) ;

__attribute__((used)) static int load_sysctl_prog(struct sysctl_test *test, const char *sysctl_path)
{
  return test->prog_file
   ? load_sysctl_prog_file(test)
   : load_sysctl_prog_insns(test, sysctl_path);
}
