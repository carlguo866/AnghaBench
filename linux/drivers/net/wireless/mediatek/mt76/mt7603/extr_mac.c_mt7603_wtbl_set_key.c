
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct mt7603_dev {int dummy; } ;
struct ieee80211_key_conf {int keyidx; } ;
typedef int key_data ;
typedef enum mt7603_cipher_type { ____Placeholder_mt7603_cipher_type } mt7603_cipher_type ;


 int EOPNOTSUPP ;
 int MT_CIPHER_NONE ;
 int MT_CIPHER_WEP104 ;
 int MT_CIPHER_WEP40 ;
 int MT_WTBL1_W0_KEY_IDX ;
 int MT_WTBL1_W0_RX_KEY_VALID ;
 int MT_WTBL1_W2_KEY_TYPE ;
 int mt7603_mac_get_key_info (struct ieee80211_key_conf*,int *) ;
 scalar_t__ mt7603_wtbl1_addr (int) ;
 scalar_t__ mt7603_wtbl3_addr (int) ;
 int mt76_rmw_field (struct mt7603_dev*,scalar_t__,int ,int) ;
 int mt76_wr_copy (struct mt7603_dev*,scalar_t__,int *,int) ;

int mt7603_wtbl_set_key(struct mt7603_dev *dev, int wcid,
   struct ieee80211_key_conf *key)
{
 enum mt7603_cipher_type cipher;
 u32 addr = mt7603_wtbl3_addr(wcid);
 u8 key_data[32];
 int key_len = sizeof(key_data);

 cipher = mt7603_mac_get_key_info(key, key_data);
 if (cipher == MT_CIPHER_NONE && key)
  return -EOPNOTSUPP;

 if (key && (cipher == MT_CIPHER_WEP40 || cipher == MT_CIPHER_WEP104)) {
  addr += key->keyidx * 16;
  key_len = 16;
 }

 mt76_wr_copy(dev, addr, key_data, key_len);

 addr = mt7603_wtbl1_addr(wcid);
 mt76_rmw_field(dev, addr + 2 * 4, MT_WTBL1_W2_KEY_TYPE, cipher);
 if (key)
  mt76_rmw_field(dev, addr, MT_WTBL1_W0_KEY_IDX, key->keyidx);
 mt76_rmw_field(dev, addr, MT_WTBL1_W0_RX_KEY_VALID, !!key);

 return 0;
}
