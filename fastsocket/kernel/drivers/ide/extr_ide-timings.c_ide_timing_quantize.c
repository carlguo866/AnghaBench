
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_timing {int setup; int act8b; int rec8b; int cyc8b; int active; int recover; int cycle; int udma; } ;


 void* EZ (int,int) ;

__attribute__((used)) static void ide_timing_quantize(struct ide_timing *t, struct ide_timing *q,
    int T, int UT)
{
 q->setup = EZ(t->setup * 1000, T);
 q->act8b = EZ(t->act8b * 1000, T);
 q->rec8b = EZ(t->rec8b * 1000, T);
 q->cyc8b = EZ(t->cyc8b * 1000, T);
 q->active = EZ(t->active * 1000, T);
 q->recover = EZ(t->recover * 1000, T);
 q->cycle = EZ(t->cycle * 1000, T);
 q->udma = EZ(t->udma * 1000, UT);
}
