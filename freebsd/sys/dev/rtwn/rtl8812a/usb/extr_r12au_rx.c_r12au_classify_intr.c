
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct rtwn_softc {int dummy; } ;
struct r92c_rx_stat {int rxdw2; } ;


 scalar_t__ R12A_C2H_TX_REPORT ;
 int R12A_RXDW2_RPT_C2H ;
 int RTWN_RX_DATA ;
 int RTWN_RX_OTHER ;
 int RTWN_RX_TX_REPORT ;
 int le32toh (int ) ;

int
r12au_classify_intr(struct rtwn_softc *sc, void *buf, int len)
{
 struct r92c_rx_stat *stat = buf;
 uint32_t rxdw2 = le32toh(stat->rxdw2);

 if (rxdw2 & R12A_RXDW2_RPT_C2H) {
  int pos = sizeof(struct r92c_rx_stat);

  if (len < pos + 2)
   return (RTWN_RX_DATA);

  if (((uint8_t *)buf)[pos] == R12A_C2H_TX_REPORT)
   return (RTWN_RX_TX_REPORT);
  else
   return (RTWN_RX_OTHER);
 } else
  return (RTWN_RX_DATA);
}
