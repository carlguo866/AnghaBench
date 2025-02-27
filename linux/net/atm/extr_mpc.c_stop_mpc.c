
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; int name; } ;
struct mpoa_client {int * old_ops; int new_ops; struct net_device* dev; } ;


 int dprintk (char*,int ) ;
 int dprintk_cont (char*) ;

__attribute__((used)) static void stop_mpc(struct mpoa_client *mpc)
{
 struct net_device *dev = mpc->dev;
 dprintk("(%s)", mpc->dev->name);


 if (dev->netdev_ops != &mpc->new_ops) {
  dprintk_cont(" mpc already stopped, not fatal\n");
  return;
 }
 dprintk_cont("\n");

 dev->netdev_ops = mpc->old_ops;
 mpc->old_ops = ((void*)0);


}
