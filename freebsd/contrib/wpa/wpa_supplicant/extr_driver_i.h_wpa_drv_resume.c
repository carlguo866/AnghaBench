
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* resume ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static inline void wpa_drv_resume(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->driver->resume)
  wpa_s->driver->resume(wpa_s->drv_priv);
}
