
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct de4x5_private {int local_state; int media; int autosense; int linkOK; int tx_enable; } ;


 int AUTO ;
 int DE4X5_AUTOSENSE_MS ;
 int TIMER_CB ;
 int de4x5_init_connection (struct net_device*) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int reset_init_sia (struct net_device*,int,int,int) ;

__attribute__((used)) static int
dc21040_state(struct net_device *dev, int csr13, int csr14, int csr15, int timeout,
       int next_state, int suspect_state,
       int (*fn)(struct net_device *, int))
{
    struct de4x5_private *lp = netdev_priv(dev);
    int next_tick = DE4X5_AUTOSENSE_MS;
    int linkBad;

    switch (lp->local_state) {
    case 0:
 reset_init_sia(dev, csr13, csr14, csr15);
 lp->local_state++;
 next_tick = 500;
 break;

    case 1:
 if (!lp->tx_enable) {
     linkBad = fn(dev, timeout);
     if (linkBad < 0) {
  next_tick = linkBad & ~TIMER_CB;
     } else {
  if (linkBad && (lp->autosense == AUTO)) {
      lp->local_state = 0;
      lp->media = next_state;
  } else {
      de4x5_init_connection(dev);
  }
     }
 } else if (!lp->linkOK && (lp->autosense == AUTO)) {
     lp->media = suspect_state;
     next_tick = 3000;
 }
 break;
    }

    return next_tick;
}
