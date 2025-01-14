
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long pid_t ;


 int SIGTERM ;
 int errx (int,char*,char*) ;
 scalar_t__ isalpha (char) ;
 scalar_t__ isdigit (char) ;
 int kill (long,int) ;
 int killjob (char*,int) ;
 int nosig (char*) ;
 int printf (char*,char*) ;
 int printsignals (int ) ;
 int signame_to_signum (char*) ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 void* strtol (char*,char**,int) ;
 int sys_nsig ;
 char** sys_signame ;
 int usage () ;
 int warn (char*,char*) ;
 int warnx (char*) ;

int
main(int argc, char *argv[])
{
 long pidl;
 pid_t pid;
 int errors, numsig, ret;
 char *ep;

 if (argc < 2)
  usage();

 numsig = SIGTERM;

 argc--, argv++;
 if (!strcmp(*argv, "-l")) {
  argc--, argv++;
  if (argc > 1)
   usage();
  if (argc == 1) {
   if (!isdigit(**argv))
    usage();
   numsig = strtol(*argv, &ep, 10);
   if (!**argv || *ep)
    errx(2, "illegal signal number: %s", *argv);
   if (numsig >= 128)
    numsig -= 128;
   if (numsig <= 0 || numsig >= sys_nsig)
    nosig(*argv);
   printf("%s\n", sys_signame[numsig]);
   return (0);
  }
  printsignals(stdout);
  return (0);
 }

 if (!strcmp(*argv, "-s")) {
  argc--, argv++;
  if (argc < 1) {
   warnx("option requires an argument -- s");
   usage();
  }
  if (strcmp(*argv, "0")) {
   if ((numsig = signame_to_signum(*argv)) < 0)
    nosig(*argv);
  } else
   numsig = 0;
  argc--, argv++;
 } else if (**argv == '-' && *(*argv + 1) != '-') {
  ++*argv;
  if (isalpha(**argv)) {
   if ((numsig = signame_to_signum(*argv)) < 0)
    nosig(*argv);
  } else if (isdigit(**argv)) {
   numsig = strtol(*argv, &ep, 10);
   if (!**argv || *ep)
    errx(2, "illegal signal number: %s", *argv);
   if (numsig < 0)
    nosig(*argv);
  } else
   nosig(*argv);
  argc--, argv++;
 }

 if (argc > 0 && strncmp(*argv, "--", 2) == 0)
  argc--, argv++;

 if (argc == 0)
  usage();

 for (errors = 0; argc; argc--, argv++) {





  {
   pidl = strtol(*argv, &ep, 10);

   pid = (pid_t)pidl;
   if (!**argv || *ep || pid != pidl)
    errx(2, "illegal process id: %s", *argv);
   ret = kill(pid, numsig);
  }
  if (ret == -1) {
   warn("%s", *argv);
   errors = 1;
  }
 }

 return (errors);
}
