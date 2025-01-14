
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps3_system_bus_device {scalar_t__ match_id; } ;
struct TYPE_2__ {struct ps3_system_bus_device* disk_sbd; scalar_t__ disk_open; scalar_t__ flash_open; } ;


 scalar_t__ PS3_MATCH_ID_STOR_DISK ;
 scalar_t__ PS3_MATCH_ID_STOR_FLASH ;
 int ps3_close_hv_device (struct ps3_system_bus_device*) ;
 TYPE_1__ ps3_flash_workaround ;

__attribute__((used)) static int ps3stor_close_hv_device(struct ps3_system_bus_device *sbd)
{
 int error;

 if (sbd->match_id == PS3_MATCH_ID_STOR_DISK
  && ps3_flash_workaround.disk_open
  && ps3_flash_workaround.flash_open) {
  ps3_flash_workaround.disk_sbd = sbd;
  return 0;
 }

 error = ps3_close_hv_device(sbd);

 if (error)
  return error;

 if (sbd->match_id == PS3_MATCH_ID_STOR_DISK)
  ps3_flash_workaround.disk_open = 0;

 if (sbd->match_id == PS3_MATCH_ID_STOR_FLASH) {
  ps3_flash_workaround.flash_open = 0;

  if (ps3_flash_workaround.disk_sbd) {
   ps3_close_hv_device(ps3_flash_workaround.disk_sbd);
   ps3_flash_workaround.disk_open = 0;
   ps3_flash_workaround.disk_sbd = ((void*)0);
  }
 }

 return 0;
}
