
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct dsa_port {TYPE_1__* cpu_dp; } ;
struct TYPE_2__ {struct net_device* master; } ;


 struct dsa_port* dsa_slave_to_port (struct net_device const*) ;

__attribute__((used)) static inline struct net_device *
dsa_slave_to_master(const struct net_device *dev)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);

 return dp->cpu_dp->master;
}
