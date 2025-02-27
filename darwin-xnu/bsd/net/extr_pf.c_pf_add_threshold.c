
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct pf_threshold {int last; int seconds; int count; } ;


 scalar_t__ PF_THRESHOLD_MULT ;
 int pf_time_second () ;

__attribute__((used)) static void
pf_add_threshold(struct pf_threshold *threshold)
{
 u_int32_t t = pf_time_second(), diff = t - threshold->last;

 if (diff >= threshold->seconds)
  threshold->count = 0;
 else
  threshold->count -= threshold->count * diff /
      threshold->seconds;
 threshold->count += PF_THRESHOLD_MULT;
 threshold->last = t;
}
