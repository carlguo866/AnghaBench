
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* utility; int* nearest_cb; TYPE_2__** cells; } ;
typedef TYPE_1__ elbg_data ;
struct TYPE_5__ {size_t index; struct TYPE_5__* next; } ;
typedef TYPE_2__ cell ;



__attribute__((used)) static void update_utility_and_n_cb(elbg_data *elbg, int idx, int newutility)
{
    cell *tempcell;

    elbg->utility[idx] = newutility;
    for (tempcell=elbg->cells[idx]; tempcell; tempcell=tempcell->next)
        elbg->nearest_cb[tempcell->index] = idx;
}
