
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_wmi {int * backlight_device; } ;


 int backlight_device_unregister (int *) ;

__attribute__((used)) static void asus_wmi_backlight_exit(struct asus_wmi *asus)
{
 backlight_device_unregister(asus->backlight_device);

 asus->backlight_device = ((void*)0);
}
