
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_tkip_data {int key_idx; int key_set; int tx_iv16; int rx_iv32; int rx_iv16; int key; struct crypto_blkcipher* rx_tfm_arc4; struct crypto_hash* rx_tfm_michael; struct crypto_blkcipher* tx_tfm_arc4; struct crypto_hash* tx_tfm_michael; } ;
struct crypto_hash {int dummy; } ;
struct crypto_blkcipher {int dummy; } ;


 int TKIP_KEY_LEN ;
 int memcpy (int ,void*,int) ;
 int memset (struct ieee80211_tkip_data*,int ,int) ;

__attribute__((used)) static int ieee80211_tkip_set_key(void *key, int len, u8 *seq, void *priv)
{
 struct ieee80211_tkip_data *tkey = priv;
 int keyidx;
 struct crypto_hash *tfm = tkey->tx_tfm_michael;
 struct crypto_blkcipher *tfm2 = tkey->tx_tfm_arc4;
 struct crypto_hash *tfm3 = tkey->rx_tfm_michael;
 struct crypto_blkcipher *tfm4 = tkey->rx_tfm_arc4;

 keyidx = tkey->key_idx;
 memset(tkey, 0, sizeof(*tkey));
 tkey->key_idx = keyidx;

 tkey->tx_tfm_michael = tfm;
 tkey->tx_tfm_arc4 = tfm2;
 tkey->rx_tfm_michael = tfm3;
 tkey->rx_tfm_arc4 = tfm4;

 if (len == TKIP_KEY_LEN) {
  memcpy(tkey->key, key, TKIP_KEY_LEN);
  tkey->key_set = 1;
  tkey->tx_iv16 = 1;
  if (seq) {
   tkey->rx_iv32 = (seq[5] << 24) | (seq[4] << 16) |
    (seq[3] << 8) | seq[2];
   tkey->rx_iv16 = (seq[1] << 8) | seq[0];
  }
 } else if (len == 0)
  tkey->key_set = 0;
 else
  return -1;

 return 0;
}
