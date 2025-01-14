
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* ifbond_ref ;
typedef TYPE_2__* bondport_ref ;
struct TYPE_11__ {scalar_t__ verbose; } ;
struct TYPE_10__ {int lag_selected_port_count; } ;
struct TYPE_9__ {scalar_t__ po_selected; TYPE_3__* po_lag; TYPE_1__* po_bond; } ;
struct TYPE_8__ {TYPE_3__* ifb_active_lag; } ;
typedef scalar_t__ SelectedState ;
typedef TYPE_3__* LAG_ref ;


 int SelectedStateString (scalar_t__) ;
 scalar_t__ SelectedState_SELECTED ;
 int bondport_flags_set_selected_changed (TYPE_2__*) ;
 int bondport_get_name (TYPE_2__*) ;
 TYPE_4__* g_bond ;
 int timestamp_printf (char*,int ,int ,int ) ;

__attribute__((used)) static void
bondport_set_selected(bondport_ref p, SelectedState s)
{
    if (s != p->po_selected) {
 ifbond_ref bond = p->po_bond;
 LAG_ref lag = p->po_lag;

 bondport_flags_set_selected_changed(p);
 if (lag != ((void*)0) && bond->ifb_active_lag == lag) {
     if (p->po_selected == SelectedState_SELECTED) {
  lag->lag_selected_port_count--;
     }
     else if (s == SelectedState_SELECTED) {
  lag->lag_selected_port_count++;
     }
     if (g_bond->verbose) {
  timestamp_printf("[%s] SetSelected: %s (was %s)\n",
     bondport_get_name(p),
     SelectedStateString(s),
     SelectedStateString(p->po_selected));
     }
 }
    }
    p->po_selected = s;
    return;
}
