
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int get_cycles () ;

__attribute__((used)) static cycle_t read_cr16(struct clocksource *cs)
{
 return get_cycles();
}
