
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_TOPQ ;
 int printf (char*) ;
 int tqbq_common (int,char**,int ) ;

void
topq_cmd(int argc, char *argv[])
{

 if (argc < 3) {
  printf("usage: topq printer [jobspec ...]\n");
  return;
 }
 --argc;
 ++argv;

 tqbq_common(argc, argv, IS_TOPQ);
}
