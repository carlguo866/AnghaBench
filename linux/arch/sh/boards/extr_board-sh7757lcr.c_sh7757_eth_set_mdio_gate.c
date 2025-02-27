
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GBECONT ;
 int GBECONT_RMII0 ;
 int GBECONT_RMII1 ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void sh7757_eth_set_mdio_gate(void *addr)
{
 if (((unsigned long)addr & 0x00000fff) < 0x0800)
  writel(readl(GBECONT) | GBECONT_RMII0, GBECONT);
 else
  writel(readl(GBECONT) | GBECONT_RMII1, GBECONT);
}
