
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;


 int N (TYPE_1__*) ;
 int exit (int) ;
 TYPE_1__* flags ;
 int fprintf (int ,char*,...) ;
 int printf (char*,char*) ;
 char* progname ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 int i;

 fprintf(stderr, "usage: %s [-d | -i device] [flags]\n", progname);
 fprintf(stderr, "where flags are:\n");
 for (i = 0; i < N(flags); i++)
  printf("%s\n", flags[i].name);
 exit(-1);
}
