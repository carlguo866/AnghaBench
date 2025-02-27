
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rtl_priv {TYPE_1__* cfg; } ;
struct rtl_efuse {scalar_t__** efuse_map; int efuse_usedbytes; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int* maps; } ;


 int COMP_EFUSE ;
 int DBG_LOUD ;
 size_t EFUSE_INIT_MAP ;
 int EFUSE_MAX_SIZE ;
 size_t EFUSE_MODIFY_MAP ;
 size_t EFUSE_OOB_PROTECT_BYTES_LEN ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int,int,int) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

bool efuse_shadow_update_chk(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 u8 section_idx, i, base;
 u16 words_need = 0, hdr_num = 0, totalbytes, efuse_used;
 bool wordchanged, result = 1;

 for (section_idx = 0; section_idx < 16; section_idx++) {
  base = section_idx * 8;
  wordchanged = 0;

  for (i = 0; i < 8; i = i + 2) {
   if (rtlefuse->efuse_map[EFUSE_INIT_MAP][base + i] !=
       rtlefuse->efuse_map[EFUSE_MODIFY_MAP][base + i] ||
       rtlefuse->efuse_map[EFUSE_INIT_MAP][base + i + 1] !=
       rtlefuse->efuse_map[EFUSE_MODIFY_MAP][base + i +
           1]) {
    words_need++;
    wordchanged = 1;
   }
  }

  if (wordchanged)
   hdr_num++;
 }

 totalbytes = hdr_num + words_need * 2;
 efuse_used = rtlefuse->efuse_usedbytes;

 if ((totalbytes + efuse_used) >=
     (EFUSE_MAX_SIZE - rtlpriv->cfg->maps[EFUSE_OOB_PROTECT_BYTES_LEN]))
  result = 0;

 RT_TRACE(rtlpriv, COMP_EFUSE, DBG_LOUD,
   "efuse_shadow_update_chk(): totalbytes(%#x), hdr_num(%#x), words_need(%#x), efuse_used(%d)\n",
   totalbytes, hdr_num, words_need, efuse_used);

 return result;
}
