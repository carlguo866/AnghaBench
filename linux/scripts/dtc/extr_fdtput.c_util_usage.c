
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 char* usage_msg ;

__attribute__((used)) static void usage(const char *msg)
{
 if (msg)
  fprintf(stderr, "Error: %s\n\n", msg);

 fprintf(stderr, "%s", usage_msg);
 exit(2);
}
