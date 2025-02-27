
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dev {int dummy; } ;


 int MT_WLAN_FUN_CTRL ;
 int MT_WLAN_FUN_CTRL_WLAN_CLK_EN ;
 int MT_WLAN_FUN_CTRL_WLAN_EN ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void
mt76x2_set_wlan_state(struct mt76x02_dev *dev, bool enable)
{
 u32 val = mt76_rr(dev, MT_WLAN_FUN_CTRL);

 if (enable)
  val |= (MT_WLAN_FUN_CTRL_WLAN_EN |
   MT_WLAN_FUN_CTRL_WLAN_CLK_EN);
 else
  val &= ~(MT_WLAN_FUN_CTRL_WLAN_EN |
    MT_WLAN_FUN_CTRL_WLAN_CLK_EN);

 mt76_wr(dev, MT_WLAN_FUN_CTRL, val);
 udelay(20);
}
