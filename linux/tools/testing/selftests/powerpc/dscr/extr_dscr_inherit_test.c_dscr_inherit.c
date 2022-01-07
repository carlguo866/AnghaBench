
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 unsigned long COUNT ;
 unsigned long DSCR_MAX ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int exit (int) ;
 int fork () ;
 int fprintf (int ,char*,...) ;
 unsigned long get_dscr () ;
 unsigned long get_dscr_usr () ;
 int getpid () ;
 int perror (char*) ;
 int set_dscr (unsigned long) ;
 int set_dscr_usr (unsigned long) ;
 int srand (int ) ;
 int stderr ;
 int waitpid (int,int*,int ) ;

int dscr_inherit(void)
{
 unsigned long i, dscr = 0;
 pid_t pid;

 srand(getpid());
 set_dscr(dscr);

 for (i = 0; i < COUNT; i++) {
  unsigned long cur_dscr, cur_dscr_usr;

  dscr++;
  if (dscr > DSCR_MAX)
   dscr = 0;

  if (i % 2 == 0)
   set_dscr_usr(dscr);
  else
   set_dscr(dscr);

  pid = fork();
  if (pid == -1) {
   perror("fork() failed");
   exit(1);
  } else if (pid) {
   int status;

   if (waitpid(pid, &status, 0) == -1) {
    perror("waitpid() failed");
    exit(1);
   }

   if (!WIFEXITED(status)) {
    fprintf(stderr, "Child didn't exit cleanly\n");
    exit(1);
   }

   if (WEXITSTATUS(status) != 0) {
    fprintf(stderr, "Child didn't exit cleanly\n");
    return 1;
   }
  } else {
   cur_dscr = get_dscr();
   if (cur_dscr != dscr) {
    fprintf(stderr, "Kernel DSCR should be %ld "
     "but is %ld\n", dscr, cur_dscr);
    exit(1);
   }

   cur_dscr_usr = get_dscr_usr();
   if (cur_dscr_usr != dscr) {
    fprintf(stderr, "User DSCR should be %ld "
     "but is %ld\n", dscr, cur_dscr_usr);
    exit(1);
   }
   exit(0);
  }
 }
 return 0;
}
