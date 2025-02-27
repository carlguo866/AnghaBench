
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CATASTROPHIC ;
 int KDB_ARGCOUNT ;
 int KDB_BADCPUNUM ;
 int KDB_CMD_GO ;
 scalar_t__ KDB_FLAG (int ) ;
 int kdb_continue_catastrophic ;
 int kdb_go_count ;
 int kdb_initial_cpu ;
 int kdb_printf (char*,...) ;
 int kdb_reboot (int ,int *) ;
 int kdbgetaddrarg (int,char const**,int*,unsigned long*,long*,int *) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static int kdb_go(int argc, const char **argv)
{
 unsigned long addr;
 int diag;
 int nextarg;
 long offset;

 if (raw_smp_processor_id() != kdb_initial_cpu) {
  kdb_printf("go must execute on the entry cpu, "
      "please use \"cpu %d\" and then execute go\n",
      kdb_initial_cpu);
  return KDB_BADCPUNUM;
 }
 if (argc == 1) {
  nextarg = 1;
  diag = kdbgetaddrarg(argc, argv, &nextarg,
         &addr, &offset, ((void*)0));
  if (diag)
   return diag;
 } else if (argc) {
  return KDB_ARGCOUNT;
 }

 diag = KDB_CMD_GO;
 if (KDB_FLAG(CATASTROPHIC)) {
  kdb_printf("Catastrophic error detected\n");
  kdb_printf("kdb_continue_catastrophic=%d, ",
   kdb_continue_catastrophic);
  if (kdb_continue_catastrophic == 0 && kdb_go_count++ == 0) {
   kdb_printf("type go a second time if you really want "
       "to continue\n");
   return 0;
  }
  if (kdb_continue_catastrophic == 2) {
   kdb_printf("forcing reboot\n");
   kdb_reboot(0, ((void*)0));
  }
  kdb_printf("attempting to continue\n");
 }
 return diag;
}
