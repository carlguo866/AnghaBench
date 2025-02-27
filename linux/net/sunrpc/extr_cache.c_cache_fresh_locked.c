
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct cache_head {int flags; scalar_t__ last_refresh; scalar_t__ expiry_time; } ;
struct cache_detail {scalar_t__ flush_time; } ;


 int CACHE_VALID ;
 scalar_t__ seconds_since_boot () ;
 int set_bit (int ,int *) ;
 int smp_wmb () ;

__attribute__((used)) static void cache_fresh_locked(struct cache_head *head, time_t expiry,
          struct cache_detail *detail)
{
 time_t now = seconds_since_boot();
 if (now <= detail->flush_time)

  now = detail->flush_time + 1;
 head->expiry_time = expiry;
 head->last_refresh = now;
 smp_wmb();
 set_bit(CACHE_VALID, &head->flags);
}
