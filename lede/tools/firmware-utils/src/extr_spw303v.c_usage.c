
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

void usage(void)
{
 fprintf(stderr, "Usage: spw303v [-i <inputfile>] [-o <outputfile>]\n");
 exit(EXIT_FAILURE);
}
