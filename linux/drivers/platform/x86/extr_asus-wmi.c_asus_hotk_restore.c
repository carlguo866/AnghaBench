
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_14__ {int dev; } ;
struct TYPE_13__ {scalar_t__ rfkill; } ;
struct TYPE_12__ {scalar_t__ rfkill; } ;
struct TYPE_11__ {scalar_t__ rfkill; } ;
struct TYPE_10__ {scalar_t__ rfkill; } ;
struct TYPE_9__ {scalar_t__ rfkill; } ;
struct TYPE_8__ {scalar_t__ rfkill; } ;
struct asus_wmi {TYPE_7__ kbd_led; TYPE_6__ uwb; TYPE_5__ gps; TYPE_4__ wwan3g; TYPE_3__ wimax; TYPE_2__ bluetooth; TYPE_1__ wlan; } ;


 int ASUS_WMI_DEVID_BLUETOOTH ;
 int ASUS_WMI_DEVID_GPS ;
 int ASUS_WMI_DEVID_UWB ;
 int ASUS_WMI_DEVID_WIMAX ;
 int ASUS_WMI_DEVID_WWAN3G ;
 int IS_ERR_OR_NULL (int ) ;
 int asus_rfkill_hotplug (struct asus_wmi*) ;
 int asus_wmi_fnlock_update (struct asus_wmi*) ;
 int asus_wmi_get_devstate_simple (struct asus_wmi*,int ) ;
 scalar_t__ asus_wmi_has_fnlock_key (struct asus_wmi*) ;
 struct asus_wmi* dev_get_drvdata (struct device*) ;
 int kbd_led_update (struct asus_wmi*) ;
 int rfkill_set_sw_state (scalar_t__,int) ;

__attribute__((used)) static int asus_hotk_restore(struct device *device)
{
 struct asus_wmi *asus = dev_get_drvdata(device);
 int bl;


 if (asus->wlan.rfkill)
  asus_rfkill_hotplug(asus);

 if (asus->bluetooth.rfkill) {
  bl = !asus_wmi_get_devstate_simple(asus,
         ASUS_WMI_DEVID_BLUETOOTH);
  rfkill_set_sw_state(asus->bluetooth.rfkill, bl);
 }
 if (asus->wimax.rfkill) {
  bl = !asus_wmi_get_devstate_simple(asus, ASUS_WMI_DEVID_WIMAX);
  rfkill_set_sw_state(asus->wimax.rfkill, bl);
 }
 if (asus->wwan3g.rfkill) {
  bl = !asus_wmi_get_devstate_simple(asus, ASUS_WMI_DEVID_WWAN3G);
  rfkill_set_sw_state(asus->wwan3g.rfkill, bl);
 }
 if (asus->gps.rfkill) {
  bl = !asus_wmi_get_devstate_simple(asus, ASUS_WMI_DEVID_GPS);
  rfkill_set_sw_state(asus->gps.rfkill, bl);
 }
 if (asus->uwb.rfkill) {
  bl = !asus_wmi_get_devstate_simple(asus, ASUS_WMI_DEVID_UWB);
  rfkill_set_sw_state(asus->uwb.rfkill, bl);
 }
 if (!IS_ERR_OR_NULL(asus->kbd_led.dev))
  kbd_led_update(asus);

 if (asus_wmi_has_fnlock_key(asus))
  asus_wmi_fnlock_update(asus);
 return 0;
}
