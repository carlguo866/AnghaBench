
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7603_dev {int dummy; } ;


 int MT_ARB_SCR ;
 int MT_ARB_SCR_RX_DISABLE ;
 int MT_ARB_SCR_TX_DISABLE ;
 int MT_WF_ARB_RQCR ;
 int MT_WF_ARB_RQCR_RX_START ;
 int MT_WF_ARB_TX_START_0 ;
 int mt76_clear (struct mt7603_dev*,int ,int) ;
 int mt76_set (struct mt7603_dev*,int ,int ) ;
 int mt76_wr (struct mt7603_dev*,int ,int ) ;

void mt7603_mac_start(struct mt7603_dev *dev)
{
 mt76_clear(dev, MT_ARB_SCR,
     MT_ARB_SCR_TX_DISABLE | MT_ARB_SCR_RX_DISABLE);
 mt76_wr(dev, MT_WF_ARB_TX_START_0, ~0);
 mt76_set(dev, MT_WF_ARB_RQCR, MT_WF_ARB_RQCR_RX_START);
}
