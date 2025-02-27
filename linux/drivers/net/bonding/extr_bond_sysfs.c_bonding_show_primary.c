
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {TYPE_1__* dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bonding {int primary_slave; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 struct slave* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sprintf (char*,char*,char*) ;
 struct bonding* to_bond (struct device*) ;

__attribute__((used)) static ssize_t bonding_show_primary(struct device *d,
        struct device_attribute *attr,
        char *buf)
{
 struct bonding *bond = to_bond(d);
 struct slave *primary;
 int count = 0;

 rcu_read_lock();
 primary = rcu_dereference(bond->primary_slave);
 if (primary)
  count = sprintf(buf, "%s\n", primary->dev->name);
 rcu_read_unlock();

 return count;
}
