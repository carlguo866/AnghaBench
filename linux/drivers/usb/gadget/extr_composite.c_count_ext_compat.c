
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_os_desc {scalar_t__ ext_compat_id; } ;
struct usb_function {int os_desc_n; TYPE_1__* os_desc_table; } ;
struct usb_configuration {int next_interface_id; struct usb_function** interface; } ;
struct TYPE_2__ {int if_id; struct usb_os_desc* os_desc; } ;


 int BUG_ON (int) ;

__attribute__((used)) static int count_ext_compat(struct usb_configuration *c)
{
 int i, res;

 res = 0;
 for (i = 0; i < c->next_interface_id; ++i) {
  struct usb_function *f;
  int j;

  f = c->interface[i];
  for (j = 0; j < f->os_desc_n; ++j) {
   struct usb_os_desc *d;

   if (i != f->os_desc_table[j].if_id)
    continue;
   d = f->os_desc_table[j].os_desc;
   if (d && d->ext_compat_id)
    ++res;
  }
 }
 BUG_ON(res > 255);
 return res;
}
