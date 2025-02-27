
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_add_pin_data {int added; int timeout; int pin_len; int pin; int uuid; int addr; } ;
struct hostapd_data {TYPE_1__* wps; } ;
struct TYPE_2__ {int registrar; } ;


 int wps_registrar_add_pin (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int wps_add_pin(struct hostapd_data *hapd, void *ctx)
{
 struct wps_add_pin_data *data = ctx;
 int ret;

 if (hapd->wps == ((void*)0))
  return 0;
 ret = wps_registrar_add_pin(hapd->wps->registrar, data->addr,
        data->uuid, data->pin, data->pin_len,
        data->timeout);
 if (ret == 0)
  data->added++;
 return ret;
}
