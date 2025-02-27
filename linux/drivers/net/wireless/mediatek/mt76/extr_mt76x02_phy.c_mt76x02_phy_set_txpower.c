
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_rate_power {int * stbc; int * ht; int * vht; int * ofdm; int * cck; } ;
struct TYPE_2__ {struct mt76_rate_power rate_power; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int MT_TX_ALC_CFG_0 ;
 int MT_TX_ALC_CFG_0_CH_INIT_0 ;
 int MT_TX_ALC_CFG_0_CH_INIT_1 ;
 int MT_TX_PWR_CFG_0 ;
 int MT_TX_PWR_CFG_1 ;
 int MT_TX_PWR_CFG_2 ;
 int MT_TX_PWR_CFG_3 ;
 int MT_TX_PWR_CFG_4 ;
 int MT_TX_PWR_CFG_7 ;
 int MT_TX_PWR_CFG_8 ;
 int MT_TX_PWR_CFG_9 ;
 int mt76_rmw_field (struct mt76x02_dev*,int ,int ,int) ;
 int mt76_wr (struct mt76x02_dev*,int ,int ) ;
 int mt76x02_tx_power_mask (int ,int ,int ,int ) ;

void mt76x02_phy_set_txpower(struct mt76x02_dev *dev, int txp_0, int txp_1)
{
 struct mt76_rate_power *t = &dev->mt76.rate_power;

 mt76_rmw_field(dev, MT_TX_ALC_CFG_0, MT_TX_ALC_CFG_0_CH_INIT_0, txp_0);
 mt76_rmw_field(dev, MT_TX_ALC_CFG_0, MT_TX_ALC_CFG_0_CH_INIT_1, txp_1);

 mt76_wr(dev, MT_TX_PWR_CFG_0,
  mt76x02_tx_power_mask(t->cck[0], t->cck[2], t->ofdm[0],
          t->ofdm[2]));
 mt76_wr(dev, MT_TX_PWR_CFG_1,
  mt76x02_tx_power_mask(t->ofdm[4], t->ofdm[6], t->ht[0],
          t->ht[2]));
 mt76_wr(dev, MT_TX_PWR_CFG_2,
  mt76x02_tx_power_mask(t->ht[4], t->ht[6], t->ht[8],
          t->ht[10]));
 mt76_wr(dev, MT_TX_PWR_CFG_3,
  mt76x02_tx_power_mask(t->ht[12], t->ht[14], t->stbc[0],
          t->stbc[2]));
 mt76_wr(dev, MT_TX_PWR_CFG_4,
  mt76x02_tx_power_mask(t->stbc[4], t->stbc[6], 0, 0));
 mt76_wr(dev, MT_TX_PWR_CFG_7,
  mt76x02_tx_power_mask(t->ofdm[7], t->vht[8], t->ht[7],
          t->vht[9]));
 mt76_wr(dev, MT_TX_PWR_CFG_8,
  mt76x02_tx_power_mask(t->ht[14], 0, t->vht[8], t->vht[9]));
 mt76_wr(dev, MT_TX_PWR_CFG_9,
  mt76x02_tx_power_mask(t->ht[7], 0, t->stbc[8], t->stbc[9]));
}
