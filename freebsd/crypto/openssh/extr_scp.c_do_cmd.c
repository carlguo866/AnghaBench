
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int list; } ;


 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SIGTSTP ;
 int SIGTTIN ;
 int SIGTTOU ;
 int addargs (TYPE_1__*,char*,...) ;
 TYPE_1__ args ;
 int close (int) ;
 int do_cmd_pid ;
 int dup2 (int,int) ;
 int errno ;
 int execvp (int ,int ) ;
 int exit (int) ;
 int fatal (char*,int ) ;
 int fmprintf (int ,char*,int ,char*,char*,char*) ;
 int fork () ;
 int killchild ;
 int perror (int ) ;
 scalar_t__ pipe (int*) ;
 int replacearg (TYPE_1__*,int ,char*,int ) ;
 int signal (int ,int ) ;
 int ssh_program ;
 int sshport ;
 int stderr ;
 int strerror (int ) ;
 int suspchild ;
 scalar_t__ verbose_mode ;

int
do_cmd(char *host, char *remuser, int port, char *cmd, int *fdin, int *fdout)
{
 int pin[2], pout[2], reserved[2];

 if (verbose_mode)
  fmprintf(stderr,
      "Executing: program %s host %s, user %s, command %s\n",
      ssh_program, host,
      remuser ? remuser : "(unspecified)", cmd);

 if (port == -1)
  port = sshport;





 if (pipe(reserved) < 0)
  fatal("pipe: %s", strerror(errno));


 if (pipe(pin) < 0)
  fatal("pipe: %s", strerror(errno));
 if (pipe(pout) < 0)
  fatal("pipe: %s", strerror(errno));


 close(reserved[0]);
 close(reserved[1]);

 signal(SIGTSTP, suspchild);
 signal(SIGTTIN, suspchild);
 signal(SIGTTOU, suspchild);


 do_cmd_pid = fork();
 if (do_cmd_pid == 0) {

  close(pin[1]);
  close(pout[0]);
  dup2(pin[0], 0);
  dup2(pout[1], 1);
  close(pin[0]);
  close(pout[1]);

  replacearg(&args, 0, "%s", ssh_program);
  if (port != -1) {
   addargs(&args, "-p");
   addargs(&args, "%d", port);
  }
  if (remuser != ((void*)0)) {
   addargs(&args, "-l");
   addargs(&args, "%s", remuser);
  }
  addargs(&args, "--");
  addargs(&args, "%s", host);
  addargs(&args, "%s", cmd);

  execvp(ssh_program, args.list);
  perror(ssh_program);
  exit(1);
 } else if (do_cmd_pid == -1) {
  fatal("fork: %s", strerror(errno));
 }

 close(pin[0]);
 *fdout = pin[1];
 close(pout[1]);
 *fdin = pout[0];
 signal(SIGTERM, killchild);
 signal(SIGINT, killchild);
 signal(SIGHUP, killchild);
 return 0;
}
