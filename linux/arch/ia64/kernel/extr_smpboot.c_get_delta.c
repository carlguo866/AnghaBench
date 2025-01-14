
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MASTER ;
 long NUM_ITERS ;
 size_t SLAVE ;
 int cpu_relax () ;
 unsigned long* go ;
 unsigned long ia64_get_itc () ;

__attribute__((used)) static inline long
get_delta (long *rt, long *master)
{
 unsigned long best_t0 = 0, best_t1 = ~0UL, best_tm = 0;
 unsigned long tcenter, t0, t1, tm;
 long i;

 for (i = 0; i < NUM_ITERS; ++i) {
  t0 = ia64_get_itc();
  go[MASTER] = 1;
  while (!(tm = go[SLAVE]))
   cpu_relax();
  go[SLAVE] = 0;
  t1 = ia64_get_itc();

  if (t1 - t0 < best_t1 - best_t0)
   best_t0 = t0, best_t1 = t1, best_tm = tm;
 }

 *rt = best_t1 - best_t0;
 *master = best_tm - best_t0;


 tcenter = (best_t0/2 + best_t1/2);
 if (best_t0 % 2 + best_t1 % 2 == 2)
  ++tcenter;
 return tcenter - best_tm;
}
