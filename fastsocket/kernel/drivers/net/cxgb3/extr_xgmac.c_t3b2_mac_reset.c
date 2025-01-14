
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct cmac {unsigned int offset; struct adapter* adapter; } ;
struct TYPE_2__ {scalar_t__ rev; } ;
struct adapter {TYPE_1__ params; } ;


 scalar_t__ A_MPS_CFG ;
 unsigned int A_TP_PIO_ADDR ;
 unsigned int A_TP_PIO_DATA ;
 int A_TP_TX_DROP_CFG_CH0 ;
 unsigned int A_XGM_RESET_CTRL ;
 unsigned int A_XGM_RX_CFG ;
 scalar_t__ A_XGM_RX_MAX_PKT_SIZE_ERR_CNT ;
 scalar_t__ A_XGM_TX_CFG ;
 int CH_ERR (struct adapter*,char*,int) ;
 unsigned int F_DISPAUSEFRAMES ;
 unsigned int F_EN1536BFRAMES ;
 int F_ENFORCEPKT ;
 unsigned int F_ENHASHMCAST ;
 unsigned int F_ENJUMBO ;
 unsigned int F_MAC_RESET_ ;
 unsigned int F_PCS_RESET_ ;
 int F_PORT0ACTIVE ;
 int F_PORT1ACTIVE ;
 unsigned int F_RGMII_RESET_ ;
 unsigned int F_RMFCS ;
 int F_TXPAUSEEN ;
 unsigned int F_XG2G_RESET_ ;
 scalar_t__ is_10G (struct adapter*) ;
 int macidx (struct cmac*) ;
 int msleep (int) ;
 unsigned int t3_read_reg (struct adapter*,unsigned int) ;
 int t3_set_reg_field (struct adapter*,scalar_t__,int,int) ;
 scalar_t__ t3_wait_op_done (struct adapter*,scalar_t__,int,int,int,int) ;
 int t3_write_reg (struct adapter*,unsigned int,unsigned int) ;
 int t3b_pcs_reset (struct cmac*) ;
 scalar_t__ uses_xaui (struct adapter*) ;

__attribute__((used)) static int t3b2_mac_reset(struct cmac *mac)
{
 struct adapter *adap = mac->adapter;
 unsigned int oft = mac->offset, store;
 int idx = macidx(mac);
 u32 val;

 if (!macidx(mac))
  t3_set_reg_field(adap, A_MPS_CFG, F_PORT0ACTIVE, 0);
 else
  t3_set_reg_field(adap, A_MPS_CFG, F_PORT1ACTIVE, 0);


 t3_set_reg_field(adap, A_MPS_CFG, F_ENFORCEPKT, 0);

 t3_set_reg_field(adap, A_XGM_TX_CFG + oft, F_TXPAUSEEN, 0);

 t3_write_reg(adap, A_XGM_RESET_CTRL + oft, F_MAC_RESET_);
 t3_read_reg(adap, A_XGM_RESET_CTRL + oft);


 t3_write_reg(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CFG_CH0 + idx);
 store = t3_read_reg(adap, A_TP_TX_DROP_CFG_CH0 + idx);

 msleep(10);


 t3_write_reg(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CFG_CH0 + idx);
 t3_write_reg(adap, A_TP_PIO_DATA, 0xc0000011);



 if (t3_wait_op_done(adap, A_XGM_RX_MAX_PKT_SIZE_ERR_CNT + oft,
       0x80000000, 1, 1000, 2)) {
  CH_ERR(adap, "MAC %d Rx fifo drain failed\n",
         macidx(mac));
  return -1;
 }

 t3_write_reg(adap, A_XGM_RESET_CTRL + oft, 0);
 t3_read_reg(adap, A_XGM_RESET_CTRL + oft);

 val = F_MAC_RESET_;
 if (is_10G(adap))
  val |= F_PCS_RESET_;
 else if (uses_xaui(adap))
  val |= F_PCS_RESET_ | F_XG2G_RESET_;
 else
  val |= F_RGMII_RESET_ | F_XG2G_RESET_;
 t3_write_reg(adap, A_XGM_RESET_CTRL + oft, val);
 t3_read_reg(adap, A_XGM_RESET_CTRL + oft);
 if ((val & F_PCS_RESET_) && adap->params.rev) {
  msleep(1);
  t3b_pcs_reset(mac);
 }
 t3_write_reg(adap, A_XGM_RX_CFG + oft,
       F_DISPAUSEFRAMES | F_EN1536BFRAMES |
       F_RMFCS | F_ENJUMBO | F_ENHASHMCAST);


 t3_write_reg(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CFG_CH0 + idx);
 t3_write_reg(adap, A_TP_PIO_DATA, store);

 if (!idx)
  t3_set_reg_field(adap, A_MPS_CFG, 0, F_PORT0ACTIVE);
 else
  t3_set_reg_field(adap, A_MPS_CFG, 0, F_PORT1ACTIVE);


 t3_set_reg_field(adap, A_MPS_CFG, F_ENFORCEPKT, 1);


 t3_set_reg_field(adap, A_MPS_CFG, F_ENFORCEPKT, 1);

 return 0;
}
