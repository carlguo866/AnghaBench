
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int tiqn_nsessions; } ;


 int PAGE_SIZE ;
 TYPE_1__* iscsi_instance_tiqn (struct config_item*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t iscsi_stat_instance_sessions_show(struct config_item *item,
  char *page)
{
 return snprintf(page, PAGE_SIZE, "%u\n",
  iscsi_instance_tiqn(item)->tiqn_nsessions);
}
