
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static void handle_term(int sig)
{
 printf("Signal %d - terminate\n", sig);
 exit(0);
}
