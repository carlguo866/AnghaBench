
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bondport_ref ;
struct TYPE_2__ {scalar_t__ verbose; } ;


 int bondport_flags_clear_mux_attached (int ) ;
 scalar_t__ bondport_flags_mux_attached (int ) ;
 int bondport_get_name (int ) ;
 TYPE_1__* g_bond ;
 int timestamp_printf (char*,int ) ;

__attribute__((used)) static void
bondport_DetachMuxFromAggregator(bondport_ref p)
{
    if (bondport_flags_mux_attached(p)) {
 if (g_bond->verbose) {
     timestamp_printf("[%s] Detached Mux From Aggregator\n",
        bondport_get_name(p));
 }
 bondport_flags_clear_mux_attached(p);
    }
    return;
}
