
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int eapol; } ;
typedef int DBusMessage ;


 int FALSE ;
 int eapol_sm_notify_logoff (int ,int ) ;

DBusMessage * wpas_dbus_handler_eap_logon(DBusMessage *message,
       struct wpa_supplicant *wpa_s)
{
 eapol_sm_notify_logoff(wpa_s->eapol, FALSE);
 return ((void*)0);
}
