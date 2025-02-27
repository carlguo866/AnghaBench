
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvebu_pcie_port {int dummy; } ;


 int PCIE_STAT_BUS ;
 int PCIE_STAT_OFF ;
 int mvebu_readl (struct mvebu_pcie_port*,int ) ;
 int mvebu_writel (struct mvebu_pcie_port*,int,int ) ;

__attribute__((used)) static void mvebu_pcie_set_local_bus_nr(struct mvebu_pcie_port *port, int nr)
{
 u32 stat;

 stat = mvebu_readl(port, PCIE_STAT_OFF);
 stat &= ~PCIE_STAT_BUS;
 stat |= nr << 8;
 mvebu_writel(port, stat, PCIE_STAT_OFF);
}
