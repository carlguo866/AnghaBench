
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item_type {TYPE_1__* ct_group_ops; } ;
struct config_item {struct config_item_type* ci_type; } ;
struct TYPE_2__ {int (* disconnect_notify ) (int ,struct config_item*) ;} ;


 int BUG_ON (int) ;
 int stub1 (int ,struct config_item*) ;
 int to_config_group (struct config_item*) ;

__attribute__((used)) static void client_disconnect_notify(struct config_item *parent_item,
         struct config_item *item)
{
 struct config_item_type *type;

 type = parent_item->ci_type;
 BUG_ON(!type);

 if (type->ct_group_ops && type->ct_group_ops->disconnect_notify)
  type->ct_group_ops->disconnect_notify(to_config_group(parent_item),
            item);
}
