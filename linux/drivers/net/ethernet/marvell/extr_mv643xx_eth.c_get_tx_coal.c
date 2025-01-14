
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mv643xx_eth_private {int t_clk; } ;


 int TX_FIFO_URGENT_THRESHOLD ;
 int do_div (int,int) ;
 int rdlp (struct mv643xx_eth_private*,int ) ;

__attribute__((used)) static unsigned int get_tx_coal(struct mv643xx_eth_private *mp)
{
 u64 temp;

 temp = (rdlp(mp, TX_FIFO_URGENT_THRESHOLD) & 0x3fff0) >> 4;
 temp *= 64000000;
 temp += mp->t_clk / 2;
 do_div(temp, mp->t_clk);

 return (unsigned int)temp;
}
