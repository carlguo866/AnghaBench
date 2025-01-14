
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDB_ARGCOUNT ;
 unsigned int KDB_DEBUG_FLAG_MASK ;
 unsigned int KDB_DEBUG_FLAG_SHIFT ;
 int KDB_ENVBUFFULL ;
 int KDB_ENVFULL ;
 char** __env ;
 int __nenv ;
 unsigned int kdb_flags ;
 int kdb_printf (char*,char const*) ;
 char* kdballocenv (size_t) ;
 unsigned int simple_strtoul (char const*,char**,int ) ;
 int sprintf (char*,char*,char const*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

int kdb_set(int argc, const char **argv)
{
 int i;
 char *ep;
 size_t varlen, vallen;







 if (argc == 3) {
  argv[2] = argv[3];
  argc--;
 }

 if (argc != 2)
  return KDB_ARGCOUNT;




 if (strcmp(argv[1], "KDBDEBUG") == 0) {
  unsigned int debugflags;
  char *cp;

  debugflags = simple_strtoul(argv[2], &cp, 0);
  if (cp == argv[2] || debugflags & ~KDB_DEBUG_FLAG_MASK) {
   kdb_printf("kdb: illegal debug flags '%s'\n",
        argv[2]);
   return 0;
  }
  kdb_flags = (kdb_flags &
        ~(KDB_DEBUG_FLAG_MASK << KDB_DEBUG_FLAG_SHIFT))
   | (debugflags << KDB_DEBUG_FLAG_SHIFT);

  return 0;
 }





 varlen = strlen(argv[1]);
 vallen = strlen(argv[2]);
 ep = kdballocenv(varlen + vallen + 2);
 if (ep == (char *)0)
  return KDB_ENVBUFFULL;

 sprintf(ep, "%s=%s", argv[1], argv[2]);

 ep[varlen+vallen+1] = '\0';

 for (i = 0; i < __nenv; i++) {
  if (__env[i]
   && ((strncmp(__env[i], argv[1], varlen) == 0)
     && ((__env[i][varlen] == '\0')
      || (__env[i][varlen] == '=')))) {
   __env[i] = ep;
   return 0;
  }
 }




 for (i = 0; i < __nenv-1; i++) {
  if (__env[i] == (char *)0) {
   __env[i] = ep;
   return 0;
  }
 }

 return KDB_ENVFULL;
}
