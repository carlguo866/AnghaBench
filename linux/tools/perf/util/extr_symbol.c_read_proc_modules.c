
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;


 int __read_proc_modules ;
 int delete_modules (struct rb_root*) ;
 scalar_t__ modules__parse (char const*,struct rb_root*,int ) ;
 scalar_t__ symbol__restricted_filename (char const*,char*) ;

__attribute__((used)) static int read_proc_modules(const char *filename, struct rb_root *modules)
{
 if (symbol__restricted_filename(filename, "/proc/modules"))
  return -1;

 if (modules__parse(filename, modules, __read_proc_modules)) {
  delete_modules(modules);
  return -1;
 }

 return 0;
}
