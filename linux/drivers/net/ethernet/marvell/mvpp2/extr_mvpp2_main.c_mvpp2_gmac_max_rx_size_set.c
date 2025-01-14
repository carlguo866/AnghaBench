
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_port {int pkt_size; scalar_t__ base; } ;


 scalar_t__ MVPP2_GMAC_CTRL_0_REG ;
 int MVPP2_GMAC_MAX_RX_SIZE_MASK ;
 int MVPP2_GMAC_MAX_RX_SIZE_OFFS ;
 int MVPP2_MH_SIZE ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void mvpp2_gmac_max_rx_size_set(struct mvpp2_port *port)
{
 u32 val;

 val = readl(port->base + MVPP2_GMAC_CTRL_0_REG);
 val &= ~MVPP2_GMAC_MAX_RX_SIZE_MASK;
 val |= (((port->pkt_size - MVPP2_MH_SIZE) / 2) <<
      MVPP2_GMAC_MAX_RX_SIZE_OFFS);
 writel(val, port->base + MVPP2_GMAC_CTRL_0_REG);
}
