
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mac_stats {scalar_t__ rx_pause; int tx_frames; } ;
struct cmac {unsigned int tx_tcnt; scalar_t__ rx_pause; int toggle_cnt; unsigned int tx_xcnt; scalar_t__ offset; scalar_t__ txen; int tx_mcnt; struct mac_stats stats; struct adapter* adapter; } ;
struct adapter {int dummy; } ;


 scalar_t__ A_TP_PIO_ADDR ;
 scalar_t__ A_TP_PIO_DATA ;
 scalar_t__ A_TP_TX_DROP_CNT_CH0 ;
 scalar_t__ A_XGM_TX_CTRL ;
 scalar_t__ A_XGM_TX_SPI4_SOP_EOP_CNT ;
 unsigned int G_TXDROPCNTCH0RCVD (int ) ;
 unsigned int G_TXSPI4SOPCNT (int ) ;
 scalar_t__ macidx (struct cmac*) ;
 int t3_read_reg (struct adapter*,scalar_t__) ;
 int t3_write_reg (struct adapter*,scalar_t__,scalar_t__) ;
 int t3b2_mac_reset (struct cmac*) ;

int t3b2_mac_watchdog_task(struct cmac *mac)
{
 struct adapter *adap = mac->adapter;
 struct mac_stats *s = &mac->stats;
 unsigned int tx_tcnt, tx_xcnt;
 u64 tx_mcnt = s->tx_frames;
 int status;

 status = 0;
 tx_xcnt = 1;
 tx_tcnt = mac->tx_tcnt;
 if (tx_mcnt == mac->tx_mcnt && mac->rx_pause == s->rx_pause) {
  tx_xcnt = (G_TXSPI4SOPCNT(t3_read_reg(adap,
      A_XGM_TX_SPI4_SOP_EOP_CNT +
             mac->offset)));
  if (tx_xcnt == 0) {
   t3_write_reg(adap, A_TP_PIO_ADDR,
         A_TP_TX_DROP_CNT_CH0 + macidx(mac));
   tx_tcnt = (G_TXDROPCNTCH0RCVD(t3_read_reg(adap,
            A_TP_PIO_DATA)));
  } else {
   goto out;
  }
 } else {
  mac->toggle_cnt = 0;
  goto out;
 }

 if ((tx_tcnt != mac->tx_tcnt) && (mac->tx_xcnt == 0)) {
  if (mac->toggle_cnt > 4) {
   status = 2;
   goto out;
  } else {
   status = 1;
   goto out;
  }
 } else {
  mac->toggle_cnt = 0;
  goto out;
 }

out:
 mac->tx_tcnt = tx_tcnt;
 mac->tx_xcnt = tx_xcnt;
 mac->tx_mcnt = s->tx_frames;
 mac->rx_pause = s->rx_pause;
 if (status == 1) {
  t3_write_reg(adap, A_XGM_TX_CTRL + mac->offset, 0);
  t3_read_reg(adap, A_XGM_TX_CTRL + mac->offset);
  t3_write_reg(adap, A_XGM_TX_CTRL + mac->offset, mac->txen);
  t3_read_reg(adap, A_XGM_TX_CTRL + mac->offset);
  mac->toggle_cnt++;
 } else if (status == 2) {
  t3b2_mac_reset(mac);
  mac->toggle_cnt = 0;
 }
 return status;
}
