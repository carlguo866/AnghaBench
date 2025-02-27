
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char const*) ;
 char* progname ;
 int stderr ;

__attribute__((used)) static void
error(const char *s)
{
    fprintf(stderr, "%s: %s\n", progname, s);
    exit(1);
}
