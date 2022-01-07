
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi {int * null_user_handler; int waitq; } ;
struct bmc_device {int dyn_id_set; } ;


 int EIO ;
 int * bmc_device_id_handler ;
 int send_get_device_id_cmd (struct ipmi_smi*) ;
 int smp_rmb () ;
 int wait_event (int ,int) ;

__attribute__((used)) static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
{
 int rv;

 bmc->dyn_id_set = 2;

 intf->null_user_handler = bmc_device_id_handler;

 rv = send_get_device_id_cmd(intf);
 if (rv)
  return rv;

 wait_event(intf->waitq, bmc->dyn_id_set != 2);

 if (!bmc->dyn_id_set)
  rv = -EIO;


 smp_rmb();

 intf->null_user_handler = ((void*)0);

 return rv;
}
