
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 scalar_t__ of_node_name_prefix (struct device_node*,char*) ;

__attribute__((used)) static int macio_skip_device(struct device_node *np)
{
 return of_node_name_prefix(np, "battery") ||
        of_node_name_prefix(np, "escc-legacy");
}
