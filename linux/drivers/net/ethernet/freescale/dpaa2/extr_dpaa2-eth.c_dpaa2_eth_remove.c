
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct net_device {int name; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct fsl_mc_device {struct device dev; } ;
struct dpaa2_eth_priv {int mc_io; int percpu_extras; int percpu_stats; int poll_thread; scalar_t__ do_link_poll; } ;


 int del_ch_napi (struct dpaa2_eth_priv*) ;
 int dev_dbg (int ,char*,int ) ;
 struct net_device* dev_get_drvdata (struct device*) ;
 int dpaa2_dbg_remove (struct dpaa2_eth_priv*) ;
 int free_dpbp (struct dpaa2_eth_priv*) ;
 int free_dpio (struct dpaa2_eth_priv*) ;
 int free_dpni (struct dpaa2_eth_priv*) ;
 int free_netdev (struct net_device*) ;
 int free_percpu (int ) ;
 int free_rings (struct dpaa2_eth_priv*) ;
 int fsl_mc_free_irqs (struct fsl_mc_device*) ;
 int fsl_mc_portal_free (int ) ;
 int kthread_stop (int ) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int dpaa2_eth_remove(struct fsl_mc_device *ls_dev)
{
 struct device *dev;
 struct net_device *net_dev;
 struct dpaa2_eth_priv *priv;

 dev = &ls_dev->dev;
 net_dev = dev_get_drvdata(dev);
 priv = netdev_priv(net_dev);




 unregister_netdev(net_dev);

 if (priv->do_link_poll)
  kthread_stop(priv->poll_thread);
 else
  fsl_mc_free_irqs(ls_dev);

 free_rings(priv);
 free_percpu(priv->percpu_stats);
 free_percpu(priv->percpu_extras);

 del_ch_napi(priv);
 free_dpbp(priv);
 free_dpio(priv);
 free_dpni(priv);

 fsl_mc_portal_free(priv->mc_io);

 free_netdev(net_dev);

 dev_dbg(net_dev->dev.parent, "Removed interface %s\n", net_dev->name);

 return 0;
}
