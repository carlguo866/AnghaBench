
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct trace_seq {int dummy; } ;
struct trace_iterator {unsigned long iter_flags; unsigned long long ts; struct trace_seq seq; TYPE_1__* tr; } ;
struct TYPE_2__ {unsigned long long time_start; } ;


 unsigned long TRACE_FILE_TIME_IN_NS ;
 unsigned long TRACE_ITER_VERBOSE ;
 int USEC_PER_MSEC ;
 unsigned long do_div (unsigned long long,int ) ;
 unsigned long long ns2usecs (unsigned long long) ;
 unsigned long long preempt_mark_thresh_us ;
 unsigned long trace_flags ;
 int trace_seq_printf (struct trace_seq*,char*,unsigned long long,...) ;

__attribute__((used)) static int
lat_print_timestamp(struct trace_iterator *iter, u64 next_ts)
{
 unsigned long verbose = trace_flags & TRACE_ITER_VERBOSE;
 unsigned long in_ns = iter->iter_flags & TRACE_FILE_TIME_IN_NS;
 unsigned long long abs_ts = iter->ts - iter->tr->time_start;
 unsigned long long rel_ts = next_ts - iter->ts;
 struct trace_seq *s = &iter->seq;

 if (in_ns) {
  abs_ts = ns2usecs(abs_ts);
  rel_ts = ns2usecs(rel_ts);
 }

 if (verbose && in_ns) {
  unsigned long abs_usec = do_div(abs_ts, USEC_PER_MSEC);
  unsigned long abs_msec = (unsigned long)abs_ts;
  unsigned long rel_usec = do_div(rel_ts, USEC_PER_MSEC);
  unsigned long rel_msec = (unsigned long)rel_ts;

  return trace_seq_printf(
    s, "[%08llx] %ld.%03ldms (+%ld.%03ldms): ",
    ns2usecs(iter->ts),
    abs_msec, abs_usec,
    rel_msec, rel_usec);
 } else if (verbose && !in_ns) {
  return trace_seq_printf(
    s, "[%016llx] %lld (+%lld): ",
    iter->ts, abs_ts, rel_ts);
 } else if (!verbose && in_ns) {
  return trace_seq_printf(
    s, " %4lldus%c: ",
    abs_ts,
    rel_ts > preempt_mark_thresh_us ? '!' :
      rel_ts > 1 ? '+' : ' ');
 } else {
  return trace_seq_printf(s, " %4lld: ", abs_ts);
 }
}
