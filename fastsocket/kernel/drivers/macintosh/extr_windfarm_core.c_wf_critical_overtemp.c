
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UMH_WAIT_EXEC ;
 int call_usermodehelper (char*,char**,char**,int ) ;

int wf_critical_overtemp(void)
{
 static char * critical_overtemp_path = "/sbin/critical_overtemp";
 char *argv[] = { critical_overtemp_path, ((void*)0) };
 static char *envp[] = { "HOME=/",
    "TERM=linux",
    "PATH=/sbin:/usr/sbin:/bin:/usr/bin",
    ((void*)0) };

 return call_usermodehelper(critical_overtemp_path,
       argv, envp, UMH_WAIT_EXEC);
}
