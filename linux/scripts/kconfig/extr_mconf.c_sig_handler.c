
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int handle_exit () ;

__attribute__((used)) static void sig_handler(int signo)
{
 exit(handle_exit());
}
