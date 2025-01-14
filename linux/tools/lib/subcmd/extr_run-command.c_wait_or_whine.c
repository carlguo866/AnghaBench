
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbuf ;
typedef scalar_t__ pid_t ;


 scalar_t__ EINTR ;
 int ERR_RUN_COMMAND_EXEC ;
 int ERR_RUN_COMMAND_WAITPID ;
 int ERR_RUN_COMMAND_WAITPID_NOEXIT ;
 int ERR_RUN_COMMAND_WAITPID_SIGNAL ;
 int ERR_RUN_COMMAND_WAITPID_WRONG_PID ;
 int STRERR_BUFSIZE ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* str_error_r (scalar_t__,char*,int) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static int wait_or_whine(pid_t pid)
{
 char sbuf[STRERR_BUFSIZE];

 for (;;) {
  int status, code;
  pid_t waiting = waitpid(pid, &status, 0);

  if (waiting < 0) {
   if (errno == EINTR)
    continue;
   fprintf(stderr, " Error: waitpid failed (%s)",
    str_error_r(errno, sbuf, sizeof(sbuf)));
   return -ERR_RUN_COMMAND_WAITPID;
  }
  if (waiting != pid)
   return -ERR_RUN_COMMAND_WAITPID_WRONG_PID;
  if (WIFSIGNALED(status))
   return -ERR_RUN_COMMAND_WAITPID_SIGNAL;

  if (!WIFEXITED(status))
   return -ERR_RUN_COMMAND_WAITPID_NOEXIT;
  code = WEXITSTATUS(status);
  switch (code) {
  case 127:
   return -ERR_RUN_COMMAND_EXEC;
  case 0:
   return 0;
  default:
   return -code;
  }
 }
}
