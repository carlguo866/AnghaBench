
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage_automountd(void)
{

 fprintf(stderr, "usage: automountd [-D name=value][-m maxproc]"
     "[-o opts][-Tidv]\n");
 exit(1);
}
