
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mt76_txq {TYPE_2__* wcid; } ;
struct TYPE_6__ {int idx; int hw_key_idx; } ;
struct TYPE_5__ {TYPE_2__ wcid; } ;
struct mt7615_vif {int idx; int omac_idx; int wmm_idx; TYPE_1__ sta; scalar_t__ band_idx; } ;
struct TYPE_7__ {int mutex; int * wcid; } ;
struct mt7615_dev {TYPE_3__ mt76; int omac_mask; int vif_mask; } ;
struct ieee80211_vif {TYPE_4__* txq; int type; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct mt7615_dev* priv; } ;
struct TYPE_8__ {scalar_t__ drv_priv; } ;


 int BIT (int) ;
 int ENOSPC ;
 int MT7615_MAX_INTERFACES ;
 int MT7615_MAX_WMM_SETS ;
 int MT7615_WTBL_RESERVED ;
 int ffs (int ) ;
 int get_omac_idx (int ,int ) ;
 int mt7615_mcu_set_dev_info (struct mt7615_dev*,struct ieee80211_vif*,int) ;
 int mt76_txq_init (TYPE_3__*,TYPE_4__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,TYPE_2__*) ;

__attribute__((used)) static int mt7615_add_interface(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif)
{
 struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
 struct mt7615_dev *dev = hw->priv;
 struct mt76_txq *mtxq;
 int idx, ret = 0;

 mutex_lock(&dev->mt76.mutex);

 mvif->idx = ffs(~dev->vif_mask) - 1;
 if (mvif->idx >= MT7615_MAX_INTERFACES) {
  ret = -ENOSPC;
  goto out;
 }

 idx = get_omac_idx(vif->type, dev->omac_mask);
 if (idx < 0) {
  ret = -ENOSPC;
  goto out;
 }
 mvif->omac_idx = idx;


 mvif->band_idx = 0;
 mvif->wmm_idx = mvif->idx % MT7615_MAX_WMM_SETS;

 ret = mt7615_mcu_set_dev_info(dev, vif, 1);
 if (ret)
  goto out;

 dev->vif_mask |= BIT(mvif->idx);
 dev->omac_mask |= BIT(mvif->omac_idx);
 idx = MT7615_WTBL_RESERVED - mvif->idx;
 mvif->sta.wcid.idx = idx;
 mvif->sta.wcid.hw_key_idx = -1;

 rcu_assign_pointer(dev->mt76.wcid[idx], &mvif->sta.wcid);
 mtxq = (struct mt76_txq *)vif->txq->drv_priv;
 mtxq->wcid = &mvif->sta.wcid;
 mt76_txq_init(&dev->mt76, vif->txq);

out:
 mutex_unlock(&dev->mt76.mutex);

 return ret;
}
