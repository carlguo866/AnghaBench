
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct bcm_sf2_priv {TYPE_1__* dev; scalar_t__ wol_ports_mask; } ;
struct TYPE_2__ {int ds; } ;


 int bcm_sf2_cfp_exit (int ) ;
 int bcm_sf2_intr_disable (struct bcm_sf2_priv*) ;
 int bcm_sf2_mdio_unregister (struct bcm_sf2_priv*) ;
 int dsa_unregister_switch (int ) ;
 struct bcm_sf2_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int bcm_sf2_sw_remove(struct platform_device *pdev)
{
 struct bcm_sf2_priv *priv = platform_get_drvdata(pdev);

 priv->wol_ports_mask = 0;

 bcm_sf2_intr_disable(priv);
 dsa_unregister_switch(priv->dev->ds);
 bcm_sf2_cfp_exit(priv->dev->ds);
 bcm_sf2_mdio_unregister(priv);

 return 0;
}
