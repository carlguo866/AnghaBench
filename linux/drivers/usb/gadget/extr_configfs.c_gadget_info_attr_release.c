
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct gadget_info* function; } ;
struct TYPE_6__ {TYPE_2__ gadget_driver; } ;
struct TYPE_4__ {int configs; } ;
struct gadget_info {TYPE_3__ composite; int available_func; int string_list; TYPE_1__ cdev; } ;
struct config_item {int dummy; } ;


 int WARN_ON (int) ;
 int kfree (struct gadget_info*) ;
 int list_empty (int *) ;
 struct gadget_info* to_gadget_info (struct config_item*) ;

__attribute__((used)) static void gadget_info_attr_release(struct config_item *item)
{
 struct gadget_info *gi = to_gadget_info(item);

 WARN_ON(!list_empty(&gi->cdev.configs));
 WARN_ON(!list_empty(&gi->string_list));
 WARN_ON(!list_empty(&gi->available_func));
 kfree(gi->composite.gadget_driver.function);
 kfree(gi);
}
