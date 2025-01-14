
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const* const*) ;
 int BUG_ON (int) ;
 int ENOMEM ;
 char** calloc (unsigned int,int) ;
 int cmd_record (unsigned int,char const**,int *) ;
 char* strdup (char const* const) ;

__attribute__((used)) static int __cmd_record(int argc, const char **argv)
{
 unsigned int rec_argc, i, j;
 const char **rec_argv;
 const char * const record_args[] = {
  "record",
  "-a",
  "-R",
  "-f",
  "-m", "1024",
  "-c", "1",
  "-e", "sched:sched_switch",
  "-e", "sched:sched_stat_wait",
  "-e", "sched:sched_stat_sleep",
  "-e", "sched:sched_stat_iowait",
  "-e", "sched:sched_stat_runtime",
  "-e", "sched:sched_process_exit",
  "-e", "sched:sched_process_fork",
  "-e", "sched:sched_wakeup",
  "-e", "sched:sched_migrate_task",
 };

 rec_argc = ARRAY_SIZE(record_args) + argc - 1;
 rec_argv = calloc(rec_argc + 1, sizeof(char *));

 if (rec_argv == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < ARRAY_SIZE(record_args); i++)
  rec_argv[i] = strdup(record_args[i]);

 for (j = 1; j < (unsigned int)argc; j++, i++)
  rec_argv[i] = argv[j];

 BUG_ON(i != rec_argc);

 return cmd_record(i, rec_argv, ((void*)0));
}
