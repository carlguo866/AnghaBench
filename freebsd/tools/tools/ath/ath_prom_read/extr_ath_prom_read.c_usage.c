
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;

__attribute__((used)) static void
usage()
{
 fprintf(stderr, "	%s [-i ifname] -d <dumpfile>\n", progname);
 exit(-1);
}
