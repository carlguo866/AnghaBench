
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int msg_enable; } ;


 TYPE_1__* netdev2adap (struct net_device*) ;

__attribute__((used)) static u32 get_msglevel(struct net_device *dev)
{
 return netdev2adap(dev)->msg_enable;
}
