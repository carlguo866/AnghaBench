
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct bcmgenet_priv {scalar_t__ phy_interface; TYPE_2__* hw_params; int dev; TYPE_1__* pdev; } ;
struct TYPE_4__ {int bp_in_mask; int flags; int bp_in_en_shift; } ;
struct TYPE_3__ {struct device dev; } ;


 int BIT (int ) ;
 int ENET_MAX_MTU_SIZE ;
 int GENET_HAS_MDIO_INTR ;
 int GENET_IS_V1 (struct bcmgenet_priv*) ;
 int GENET_IS_V2 (struct bcmgenet_priv*) ;
 int INTRL2_CPU_MASK_CLEAR ;
 int MIB_RESET_RUNT ;
 int MIB_RESET_RX ;
 int MIB_RESET_TX ;
 scalar_t__ PHY_INTERFACE_MODE_MOCA ;
 int RBUF_ALIGN_2B ;
 int RBUF_CTRL ;
 int RBUF_TBUF_SIZE_CTRL ;
 int UMAC_IRQ_MDIO_DONE ;
 int UMAC_IRQ_MDIO_ERROR ;
 int UMAC_MAX_FRAME_LEN ;
 int UMAC_MIB_CTRL ;
 int bcmgenet_bp_mc_get (struct bcmgenet_priv*) ;
 int bcmgenet_bp_mc_set (struct bcmgenet_priv*,int) ;
 int bcmgenet_intr_disable (struct bcmgenet_priv*) ;
 int bcmgenet_intrl2_0_writel (struct bcmgenet_priv*,int,int ) ;
 int bcmgenet_rbuf_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_rbuf_writel (struct bcmgenet_priv*,int,int ) ;
 int bcmgenet_umac_writel (struct bcmgenet_priv*,int,int ) ;
 int dev_dbg (struct device*,char*) ;
 scalar_t__ netif_is_multiqueue (int ) ;
 int reset_umac (struct bcmgenet_priv*) ;

__attribute__((used)) static void init_umac(struct bcmgenet_priv *priv)
{
 struct device *kdev = &priv->pdev->dev;
 u32 reg;
 u32 int0_enable = 0;

 dev_dbg(&priv->pdev->dev, "bcmgenet: init_umac\n");

 reset_umac(priv);


 bcmgenet_umac_writel(priv,
        MIB_RESET_RX | MIB_RESET_TX | MIB_RESET_RUNT,
        UMAC_MIB_CTRL);
 bcmgenet_umac_writel(priv, 0, UMAC_MIB_CTRL);

 bcmgenet_umac_writel(priv, ENET_MAX_MTU_SIZE, UMAC_MAX_FRAME_LEN);


 reg = bcmgenet_rbuf_readl(priv, RBUF_CTRL);
 reg |= RBUF_ALIGN_2B;
 bcmgenet_rbuf_writel(priv, reg, RBUF_CTRL);

 if (!GENET_IS_V1(priv) && !GENET_IS_V2(priv))
  bcmgenet_rbuf_writel(priv, 1, RBUF_TBUF_SIZE_CTRL);

 bcmgenet_intr_disable(priv);


 if (priv->phy_interface == PHY_INTERFACE_MODE_MOCA) {
  reg = bcmgenet_bp_mc_get(priv);
  reg |= BIT(priv->hw_params->bp_in_en_shift);


  if (netif_is_multiqueue(priv->dev))
   reg |= priv->hw_params->bp_in_mask;
  else
   reg &= ~priv->hw_params->bp_in_mask;
  bcmgenet_bp_mc_set(priv, reg);
 }


 if (priv->hw_params->flags & GENET_HAS_MDIO_INTR)
  int0_enable |= (UMAC_IRQ_MDIO_DONE | UMAC_IRQ_MDIO_ERROR);

 bcmgenet_intrl2_0_writel(priv, int0_enable, INTRL2_CPU_MASK_CLEAR);

 dev_dbg(kdev, "done init umac\n");
}
