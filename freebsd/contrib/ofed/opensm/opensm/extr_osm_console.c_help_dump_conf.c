
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static void help_dump_conf(FILE *out, int detail)
{
 fprintf(out, "dump_conf\n");
 if (detail) {
  fprintf(out, "dump current opensm configuration\n");
 }
}
