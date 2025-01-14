
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_stats {int mutex; } ;
struct TYPE_2__ {int * histogram; int * io_ticks; int time_in_queue; int io_ticks_total; int * ticks; int * sectors; int * merges; int * ios; } ;
struct dm_stat_shared {TYPE_1__ tmp; } ;
struct dm_stat {size_t n_entries; size_t step; size_t start; size_t end; int n_histogram_entries; struct dm_stat_shared* stat_shared; } ;
typedef size_t sector_t ;


 int DMEMIT (char*,...) ;
 int ENOENT ;
 size_t READ ;
 size_t WRITE ;
 int __dm_stat_clear (struct dm_stat*,size_t,size_t,int) ;
 int __dm_stat_init_temporary_percpu_totals (struct dm_stat_shared*,struct dm_stat*,size_t) ;
 struct dm_stat* __dm_stats_find (struct dm_stats*,int) ;
 int dm_jiffies_to_msec64 (struct dm_stat*,int ) ;
 int dm_stat_in_flight (struct dm_stat_shared*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int dm_stats_print(struct dm_stats *stats, int id,
     size_t idx_start, size_t idx_len,
     bool clear, char *result, unsigned maxlen)
{
 unsigned sz = 0;
 struct dm_stat *s;
 size_t x;
 sector_t start, end, step;
 size_t idx_end;
 struct dm_stat_shared *shared;






 mutex_lock(&stats->mutex);

 s = __dm_stats_find(stats, id);
 if (!s) {
  mutex_unlock(&stats->mutex);
  return -ENOENT;
 }

 idx_end = idx_start + idx_len;
 if (idx_end < idx_start ||
     idx_end > s->n_entries)
  idx_end = s->n_entries;

 if (idx_start > idx_end)
  idx_start = idx_end;

 step = s->step;
 start = s->start + (step * idx_start);

 for (x = idx_start; x < idx_end; x++, start = end) {
  shared = &s->stat_shared[x];
  end = start + step;
  if (unlikely(end > s->end))
   end = s->end;

  __dm_stat_init_temporary_percpu_totals(shared, s, x);

  DMEMIT("%llu+%llu %llu %llu %llu %llu %llu %llu %llu %llu %d %llu %llu %llu %llu",
         (unsigned long long)start,
         (unsigned long long)step,
         shared->tmp.ios[READ],
         shared->tmp.merges[READ],
         shared->tmp.sectors[READ],
         dm_jiffies_to_msec64(s, shared->tmp.ticks[READ]),
         shared->tmp.ios[WRITE],
         shared->tmp.merges[WRITE],
         shared->tmp.sectors[WRITE],
         dm_jiffies_to_msec64(s, shared->tmp.ticks[WRITE]),
         dm_stat_in_flight(shared),
         dm_jiffies_to_msec64(s, shared->tmp.io_ticks_total),
         dm_jiffies_to_msec64(s, shared->tmp.time_in_queue),
         dm_jiffies_to_msec64(s, shared->tmp.io_ticks[READ]),
         dm_jiffies_to_msec64(s, shared->tmp.io_ticks[WRITE]));
  if (s->n_histogram_entries) {
   unsigned i;
   for (i = 0; i < s->n_histogram_entries + 1; i++) {
    DMEMIT("%s%llu", !i ? " " : ":", shared->tmp.histogram[i]);
   }
  }
  DMEMIT("\n");

  if (unlikely(sz + 1 >= maxlen))
   goto buffer_overflow;
 }

 if (clear)
  __dm_stat_clear(s, idx_start, idx_end, 0);

buffer_overflow:
 mutex_unlock(&stats->mutex);

 return 1;
}
