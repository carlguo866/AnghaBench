
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
struct TYPE_2__ {char* serial_number; int changed_parameters; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int CFG_CHANGED_WPS_STRING ;
 int DBUS_TYPE_STRING ;
 int FALSE ;
 int TRUE ;
 scalar_t__ WPS_SERIAL_NUMBER_MAX_LEN ;
 int os_free (char*) ;
 char* os_strdup (char*) ;
 scalar_t__ os_strlen (char*) ;
 int wpa_supplicant_update_config (struct wpa_supplicant*) ;
 int wpas_dbus_simple_property_setter (int *,int *,int ,char**) ;

dbus_bool_t wpas_dbus_setter_wps_device_serial_number(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 char *methods, *serial_number;

 if (!wpas_dbus_simple_property_setter(iter, error, DBUS_TYPE_STRING,
           &methods))
  return FALSE;

 if (os_strlen(methods) > WPS_SERIAL_NUMBER_MAX_LEN)
  return FALSE;

 serial_number = os_strdup(methods);
 if (!serial_number)
  return FALSE;
 os_free(wpa_s->conf->serial_number);
 wpa_s->conf->serial_number = serial_number;
 wpa_s->conf->changed_parameters |= CFG_CHANGED_WPS_STRING;
 wpa_supplicant_update_config(wpa_s);

 return TRUE;
}
