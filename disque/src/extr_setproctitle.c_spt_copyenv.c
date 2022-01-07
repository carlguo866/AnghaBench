
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 scalar_t__ setenv (char*,char*,int) ;
 int spt_clearenv () ;
 char* strchr (char*,char) ;

__attribute__((used)) static int spt_copyenv(char *oldenv[]) {
 extern char **environ;
 char *eq;
 int i, error;

 if (environ != oldenv)
  return 0;

 if ((error = spt_clearenv()))
  goto error;

 for (i = 0; oldenv[i]; i++) {
  if (!(eq = strchr(oldenv[i], '=')))
   continue;

  *eq = '\0';
  error = (0 != setenv(oldenv[i], eq + 1, 1))? errno : 0;
  *eq = '=';

  if (error)
   goto error;
 }

 return 0;
error:
 environ = oldenv;

 return error;
}
