
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KDB_DEBUG (int ) ;
 int MASK ;
 scalar_t__* __env ;
 int __nenv ;
 scalar_t__ kdb_flags ;
 int kdb_printf (char*,scalar_t__) ;

__attribute__((used)) static int kdb_env(int argc, const char **argv)
{
 int i;

 for (i = 0; i < __nenv; i++) {
  if (__env[i])
   kdb_printf("%s\n", __env[i]);
 }

 if (KDB_DEBUG(MASK))
  kdb_printf("KDBFLAGS=0x%x\n", kdb_flags);

 return 0;
}
