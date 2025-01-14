
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 unsigned long SYS_RESTART ;
 int efibc_set_variable (char*,char const*) ;

__attribute__((used)) static int efibc_reboot_notifier_call(struct notifier_block *notifier,
          unsigned long event, void *data)
{
 const char *reason = "shutdown";
 int ret;

 if (event == SYS_RESTART)
  reason = "reboot";

 ret = efibc_set_variable("LoaderEntryRebootReason", reason);
 if (ret || !data)
  return NOTIFY_DONE;

 efibc_set_variable("LoaderEntryOneShot", (char *)data);

 return NOTIFY_DONE;
}
