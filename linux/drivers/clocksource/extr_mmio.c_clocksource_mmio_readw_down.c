
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct clocksource {int mask; } ;
struct TYPE_2__ {int reg; } ;


 scalar_t__ readw_relaxed (int ) ;
 TYPE_1__* to_mmio_clksrc (struct clocksource*) ;

u64 clocksource_mmio_readw_down(struct clocksource *c)
{
 return ~(u64)readw_relaxed(to_mmio_clksrc(c)->reg) & c->mask;
}
