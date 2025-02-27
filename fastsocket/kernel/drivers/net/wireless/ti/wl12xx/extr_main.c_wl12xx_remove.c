
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_priv {int rx_mem_addr; } ;
struct wl1271 {struct wl12xx_priv* priv; } ;
struct platform_device {int dummy; } ;


 int kfree (int ) ;
 struct wl1271* platform_get_drvdata (struct platform_device*) ;
 int wlcore_remove (struct platform_device*) ;

__attribute__((used)) static int wl12xx_remove(struct platform_device *pdev)
{
 struct wl1271 *wl = platform_get_drvdata(pdev);
 struct wl12xx_priv *priv;

 if (!wl)
  goto out;
 priv = wl->priv;

 kfree(priv->rx_mem_addr);

out:
 return wlcore_remove(pdev);
}
