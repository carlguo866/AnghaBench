
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gred_sched_data {int red_flags; } ;


 int TC_RED_HARDDROP ;

__attribute__((used)) static int gred_use_harddrop(struct gred_sched_data *q)
{
 return q->red_flags & TC_RED_HARDDROP;
}
