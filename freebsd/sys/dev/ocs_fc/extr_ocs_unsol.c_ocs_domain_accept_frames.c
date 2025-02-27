
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int hold_frames; } ;
typedef TYPE_2__ ocs_xport_fcfi_t ;
struct TYPE_10__ {TYPE_1__* xport; } ;
typedef TYPE_3__ ocs_t ;
struct TYPE_11__ {size_t fcf_indicator; TYPE_3__* ocs; } ;
typedef TYPE_4__ ocs_domain_t ;
struct TYPE_8__ {TYPE_2__* fcfi; } ;


 size_t SLI4_MAX_FCFI ;
 int ocs_assert (int) ;
 int ocs_domain_process_pending (TYPE_4__*) ;
 int ocs_log_debug (TYPE_3__*,char*,size_t) ;

void
ocs_domain_accept_frames(ocs_domain_t *domain)
{
 ocs_t *ocs = domain->ocs;
 ocs_xport_fcfi_t *xport_fcfi;

 ocs_assert(domain->fcf_indicator < SLI4_MAX_FCFI);
 xport_fcfi = &ocs->xport->fcfi[domain->fcf_indicator];
 if (xport_fcfi->hold_frames == 1) {
  ocs_log_debug(domain->ocs, "hold frames cleared for FCFI %d\n",
         domain->fcf_indicator);
 }
 xport_fcfi->hold_frames = 0;
 ocs_domain_process_pending(domain);
}
