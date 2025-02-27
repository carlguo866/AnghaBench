
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ sa_need_attr_registration; } ;
typedef TYPE_2__ sa_os_t ;
struct TYPE_9__ {TYPE_1__* sa_os; } ;
typedef TYPE_3__ sa_handle_t ;
typedef int sa_bulk_attr_t ;
typedef int dmu_tx_t ;
struct TYPE_7__ {TYPE_2__* os_sa; } ;


 int sa_attr_register_sync (TYPE_3__*,int *) ;
 int sa_build_layouts (TYPE_3__*,int *,int,int *) ;

int
sa_replace_all_by_template_locked(sa_handle_t *hdl, sa_bulk_attr_t *attr_desc,
    int attr_count, dmu_tx_t *tx)
{
 sa_os_t *sa = hdl->sa_os->os_sa;

 if (sa->sa_need_attr_registration)
  sa_attr_register_sync(hdl, tx);
 return (sa_build_layouts(hdl, attr_desc, attr_count, tx));
}
