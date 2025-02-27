
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct mac_stats {int rx_fifo_ovfl; int rx_pause; int rx_frames; int tx_frames; } ;
struct cmac {unsigned int offset; int txen; scalar_t__ toggle_cnt; int rx_ocnt; void* rx_xcnt; int rx_pause; int rx_mcnt; void* tx_xcnt; int tx_tcnt; int tx_mcnt; int ext_port; scalar_t__ multiport; struct mac_stats stats; TYPE_2__* adapter; } ;
struct TYPE_7__ {scalar_t__ rev; } ;
struct TYPE_8__ {TYPE_1__ params; } ;
typedef TYPE_2__ adapter_t ;


 scalar_t__ A_TP_PIO_ADDR ;
 scalar_t__ A_TP_PIO_DATA ;
 int A_TP_TX_DROP_CFG_CH0 ;
 int A_TP_TX_DROP_CNT_CH0 ;
 int A_TP_TX_DROP_MODE ;
 scalar_t__ A_XGM_RX_CTRL ;
 scalar_t__ A_XGM_RX_SPI4_SOP_EOP_CNT ;
 scalar_t__ A_XGM_TX_CTRL ;
 scalar_t__ A_XGM_TX_SPI4_SOP_EOP_CNT ;
 int F_RXEN ;
 int F_TXEN ;
 int G_TXDROPCNTCH0RCVD (int ) ;
 void* G_TXSPI4SOPCNT (int ) ;
 int MAC_DIRECTION_RX ;
 int MAC_DIRECTION_TX ;
 scalar_t__ T3_REV_C ;
 int macidx (struct cmac*) ;
 int t3_read_reg (TYPE_2__*,scalar_t__) ;
 int t3_set_reg_field (TYPE_2__*,scalar_t__,int,int) ;
 int t3_vsc7323_enable (TYPE_2__*,int ,int) ;
 int t3_write_reg (TYPE_2__*,scalar_t__,int) ;

int t3_mac_enable(struct cmac *mac, int which)
{
 int idx = macidx(mac);
 adapter_t *adap = mac->adapter;
 unsigned int oft = mac->offset;
 struct mac_stats *s = &mac->stats;

 if (mac->multiport)
  return t3_vsc7323_enable(adap, mac->ext_port, which);

 if (which & MAC_DIRECTION_TX) {
  t3_write_reg(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CFG_CH0 + idx);
  t3_write_reg(adap, A_TP_PIO_DATA,
        adap->params.rev == T3_REV_C ?
        0xc4ffff01 : 0xc0ede401);
  t3_write_reg(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_MODE);
  t3_set_reg_field(adap, A_TP_PIO_DATA, 1 << idx,
     adap->params.rev == T3_REV_C ?
     0 : 1 << idx);

  t3_write_reg(adap, A_XGM_TX_CTRL + oft, F_TXEN);

  t3_write_reg(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CNT_CH0 + idx);
  mac->tx_mcnt = s->tx_frames;
  mac->tx_tcnt = (G_TXDROPCNTCH0RCVD(t3_read_reg(adap,
              A_TP_PIO_DATA)));
  mac->tx_xcnt = (G_TXSPI4SOPCNT(t3_read_reg(adap,
      A_XGM_TX_SPI4_SOP_EOP_CNT +
      oft)));
  mac->rx_mcnt = s->rx_frames;
  mac->rx_pause = s->rx_pause;
  mac->rx_xcnt = (G_TXSPI4SOPCNT(t3_read_reg(adap,
      A_XGM_RX_SPI4_SOP_EOP_CNT +
      oft)));
  mac->rx_ocnt = s->rx_fifo_ovfl;
  mac->txen = F_TXEN;
  mac->toggle_cnt = 0;
 }
 if (which & MAC_DIRECTION_RX)
  t3_write_reg(adap, A_XGM_RX_CTRL + oft, F_RXEN);
 return 0;
}
