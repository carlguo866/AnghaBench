
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int VC_CAPSLOCK ;
 int kbd ;
 scalar_t__ rep ;
 int set_vc_kbd_led (int ,int ) ;

__attribute__((used)) static void fn_caps_on(struct vc_data *vc)
{
 if (rep)
  return;

 set_vc_kbd_led(kbd, VC_CAPSLOCK);
}
