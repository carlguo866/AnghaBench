
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;


 int kfree (int ) ;
 int to_simple_children (struct config_item*) ;

__attribute__((used)) static void simple_children_release(struct config_item *item)
{
 kfree(to_simple_children(item));
}
