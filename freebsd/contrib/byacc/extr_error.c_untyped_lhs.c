
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int done (int) ;
 int fprintf (int ,char*,char*,int,char*) ;
 char* input_file_name ;
 int lineno ;
 char* myname ;
 int stderr ;

void
untyped_lhs(void)
{
    fprintf(stderr, "%s: e - line %d of \"%s\", $$ is untyped\n",
     myname, lineno, input_file_name);
    done(1);
}
