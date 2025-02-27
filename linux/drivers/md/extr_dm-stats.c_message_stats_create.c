
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct dm_arg_set {unsigned int argc; char** argv; } ;
typedef unsigned long long sector_t ;


 int EINVAL ;
 int INT_MAX ;
 unsigned int STAT_PRECISE_TIMESTAMPS ;
 int dm_consume_args (struct dm_arg_set*,int) ;
 unsigned long long dm_get_size (struct mapped_device*) ;
 int dm_get_stats (struct mapped_device*) ;
 int dm_internal_resume_fast ;
 int dm_internal_suspend_fast ;
 scalar_t__ dm_message_test_buffer_overflow (char*,unsigned int) ;
 char* dm_shift_arg (struct dm_arg_set*) ;
 int dm_stats_create (int ,unsigned long long,unsigned long long,unsigned long long,unsigned int,unsigned int,unsigned long long*,char const*,char const*,int ,int ,struct mapped_device*) ;
 scalar_t__ do_div (unsigned long long,unsigned int) ;
 int kfree (unsigned long long*) ;
 int parse_histogram (char const*,unsigned int*,unsigned long long**) ;
 int snprintf (char*,unsigned int,char*,int) ;
 int sscanf (char const*,char*,...) ;
 int strcasecmp (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int strncasecmp (char const*,char*,int) ;

__attribute__((used)) static int message_stats_create(struct mapped_device *md,
    unsigned argc, char **argv,
    char *result, unsigned maxlen)
{
 int r;
 int id;
 char dummy;
 unsigned long long start, end, len, step;
 unsigned divisor;
 const char *program_id, *aux_data;
 unsigned stat_flags = 0;

 unsigned n_histogram_entries = 0;
 unsigned long long *histogram_boundaries = ((void*)0);

 struct dm_arg_set as, as_backup;
 const char *a;
 unsigned feature_args;






 if (argc < 3)
  goto ret_einval;

 as.argc = argc;
 as.argv = argv;
 dm_consume_args(&as, 1);

 a = dm_shift_arg(&as);
 if (!strcmp(a, "-")) {
  start = 0;
  len = dm_get_size(md);
  if (!len)
   len = 1;
 } else if (sscanf(a, "%llu+%llu%c", &start, &len, &dummy) != 2 ||
     start != (sector_t)start || len != (sector_t)len)
  goto ret_einval;

 end = start + len;
 if (start >= end)
  goto ret_einval;

 a = dm_shift_arg(&as);
 if (sscanf(a, "/%u%c", &divisor, &dummy) == 1) {
  if (!divisor)
   return -EINVAL;
  step = end - start;
  if (do_div(step, divisor))
   step++;
  if (!step)
   step = 1;
 } else if (sscanf(a, "%llu%c", &step, &dummy) != 1 ||
     step != (sector_t)step || !step)
  goto ret_einval;

 as_backup = as;
 a = dm_shift_arg(&as);
 if (a && sscanf(a, "%u%c", &feature_args, &dummy) == 1) {
  while (feature_args--) {
   a = dm_shift_arg(&as);
   if (!a)
    goto ret_einval;
   if (!strcasecmp(a, "precise_timestamps"))
    stat_flags |= STAT_PRECISE_TIMESTAMPS;
   else if (!strncasecmp(a, "histogram:", 10)) {
    if (n_histogram_entries)
     goto ret_einval;
    if ((r = parse_histogram(a + 10, &n_histogram_entries, &histogram_boundaries)))
     goto ret;
   } else
    goto ret_einval;
  }
 } else {
  as = as_backup;
 }

 program_id = "-";
 aux_data = "-";

 a = dm_shift_arg(&as);
 if (a)
  program_id = a;

 a = dm_shift_arg(&as);
 if (a)
  aux_data = a;

 if (as.argc)
  goto ret_einval;







 snprintf(result, maxlen, "%d", INT_MAX);
 if (dm_message_test_buffer_overflow(result, maxlen)) {
  r = 1;
  goto ret;
 }

 id = dm_stats_create(dm_get_stats(md), start, end, step, stat_flags,
        n_histogram_entries, histogram_boundaries, program_id, aux_data,
        dm_internal_suspend_fast, dm_internal_resume_fast, md);
 if (id < 0) {
  r = id;
  goto ret;
 }

 snprintf(result, maxlen, "%d", id);

 r = 1;
 goto ret;

ret_einval:
 r = -EINVAL;
ret:
 kfree(histogram_boundaries);
 return r;
}
