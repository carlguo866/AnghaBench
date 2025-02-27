
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mvpp2_port {scalar_t__ gop_id; scalar_t__ base; TYPE_1__* priv; } ;
struct TYPE_2__ {scalar_t__ hw_version; } ;


 scalar_t__ MVPP22 ;
 int MVPP22_XLG_CTRL0_MAC_RESET_DIS ;
 scalar_t__ MVPP22_XLG_CTRL0_REG ;
 scalar_t__ MVPP2_GMAC_CTRL_2_REG ;
 int MVPP2_GMAC_PORT_RESET_MASK ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mvpp2_mac_reset_assert(struct mvpp2_port *port)
{
 u32 val;

 val = readl(port->base + MVPP2_GMAC_CTRL_2_REG) |
       MVPP2_GMAC_PORT_RESET_MASK;
 writel(val, port->base + MVPP2_GMAC_CTRL_2_REG);

 if (port->priv->hw_version == MVPP22 && port->gop_id == 0) {
  val = readl(port->base + MVPP22_XLG_CTRL0_REG) &
        ~MVPP22_XLG_CTRL0_MAC_RESET_DIS;
  writel(val, port->base + MVPP22_XLG_CTRL0_REG);
 }
}
