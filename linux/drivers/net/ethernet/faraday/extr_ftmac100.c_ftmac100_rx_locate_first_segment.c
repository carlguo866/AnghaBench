
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100_rxdes {int dummy; } ;
struct ftmac100 {int dummy; } ;


 struct ftmac100_rxdes* ftmac100_current_rxdes (struct ftmac100*) ;
 int ftmac100_rx_pointer_advance (struct ftmac100*) ;
 scalar_t__ ftmac100_rxdes_first_segment (struct ftmac100_rxdes*) ;
 int ftmac100_rxdes_owned_by_dma (struct ftmac100_rxdes*) ;
 int ftmac100_rxdes_set_dma_own (struct ftmac100_rxdes*) ;

__attribute__((used)) static struct ftmac100_rxdes *
ftmac100_rx_locate_first_segment(struct ftmac100 *priv)
{
 struct ftmac100_rxdes *rxdes = ftmac100_current_rxdes(priv);

 while (!ftmac100_rxdes_owned_by_dma(rxdes)) {
  if (ftmac100_rxdes_first_segment(rxdes))
   return rxdes;

  ftmac100_rxdes_set_dma_own(rxdes);
  ftmac100_rx_pointer_advance(priv);
  rxdes = ftmac100_current_rxdes(priv);
 }

 return ((void*)0);
}
