
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr,
"usage: uuencode [-m] [-o outfile] [infile] remotefile\n"
"       b64encode [-o outfile] [infile] remotefile\n");
 exit(1);
}
