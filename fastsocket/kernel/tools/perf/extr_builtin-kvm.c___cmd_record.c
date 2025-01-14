
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 char** calloc (int,int) ;
 int cmd_record (int,char const**,int *) ;
 char* strdup (char const*) ;

__attribute__((used)) static int __cmd_record(const char *file_name, int argc, const char **argv)
{
 int rec_argc, i = 0, j;
 const char **rec_argv;

 rec_argc = argc + 2;
 rec_argv = calloc(rec_argc + 1, sizeof(char *));
 rec_argv[i++] = strdup("record");
 rec_argv[i++] = strdup("-o");
 rec_argv[i++] = strdup(file_name);
 for (j = 1; j < argc; j++, i++)
  rec_argv[i] = argv[j];

 BUG_ON(i != rec_argc);

 return cmd_record(i, rec_argv, ((void*)0));
}
