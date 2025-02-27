
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* addr_to_sym (uintptr_t,uintptr_t*,size_t*) ;
 scalar_t__ bcmp (char*,char*,int) ;
 char** g_pri_class ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static char *
format_symbol(char *buf, uintptr_t addr, int show_size)
{
 uintptr_t symoff;
 char *symname;
 size_t symsize;

 symname = addr_to_sym(addr, &symoff, &symsize);

 if (show_size && symoff == 0)
  (void) sprintf(buf, "%s[%ld]", symname, (long)symsize);
 else if (symoff == 0)
  (void) sprintf(buf, "%s", symname);
 else if (symoff < 16 && bcmp(symname, "cpu[", 4) == 0)



  (void) sprintf(buf, "%s+%s", symname, g_pri_class[(int)symoff]);

 else if (symoff <= symsize || (symoff < 256 && addr != symoff))
  (void) sprintf(buf, "%s+0x%llx", symname,
      (unsigned long long)symoff);
 else
  (void) sprintf(buf, "0x%llx", (unsigned long long)addr);
 return (buf);
}
