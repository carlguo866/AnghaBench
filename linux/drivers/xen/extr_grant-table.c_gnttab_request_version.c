
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct gnttab_set_version {int version; } ;
struct TYPE_4__ {int version; } ;


 int GNTTABOP_set_version ;
 long HYPERVISOR_grant_table_op (int ,struct gnttab_set_version*,int) ;
 TYPE_1__* gnttab_interface ;
 scalar_t__ gnttab_need_v2 () ;
 TYPE_1__ gnttab_v1_ops ;
 TYPE_1__ gnttab_v2_ops ;
 int pr_info (char*,int ) ;
 int xen_gnttab_version ;

__attribute__((used)) static void gnttab_request_version(void)
{
 long rc;
 struct gnttab_set_version gsv;

 if (gnttab_need_v2())
  gsv.version = 2;
 else
  gsv.version = 1;


 if (xen_gnttab_version >= 1 && xen_gnttab_version <= 2)
  gsv.version = xen_gnttab_version;

 rc = HYPERVISOR_grant_table_op(GNTTABOP_set_version, &gsv, 1);
 if (rc == 0 && gsv.version == 2)
  gnttab_interface = &gnttab_v2_ops;
 else
  gnttab_interface = &gnttab_v1_ops;
 pr_info("Grant tables using version %d layout\n",
  gnttab_interface->version);
}
