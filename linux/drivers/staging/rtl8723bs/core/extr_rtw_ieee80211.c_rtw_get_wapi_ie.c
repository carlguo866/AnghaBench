
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int u8 ;
typedef int u16 ;


 int RT_TRACE (int ,int ,char*) ;
 scalar_t__ _BEACON_ITERVAL_ ;
 scalar_t__ _CAPABILITY_ ;
 scalar_t__ _TIMESTAMP_ ;
 int _WAPI_IE_ ;
 int _drv_info_ ;
 int _module_rtl871x_mlme_c_ ;
 int memcmp (int*,int*,int) ;
 int memcpy (int*,int*,int) ;

int rtw_get_wapi_ie(u8 *in_ie, uint in_len, u8 *wapi_ie, u16 *wapi_len)
{
 int len = 0;
 u8 authmode, i;
 uint cnt;
 u8 wapi_oui1[4] = {0x0, 0x14, 0x72, 0x01};
 u8 wapi_oui2[4] = {0x0, 0x14, 0x72, 0x02};

 if (wapi_len)
  *wapi_len = 0;

 if (!in_ie || in_len <= 0)
  return len;

 cnt = (_TIMESTAMP_ + _BEACON_ITERVAL_ + _CAPABILITY_);

 while (cnt < in_len) {
  authmode = in_ie[cnt];


  if (authmode == _WAPI_IE_ && (!memcmp(&in_ie[cnt+6], wapi_oui1, 4) ||
     !memcmp(&in_ie[cnt+6], wapi_oui2, 4))) {
   if (wapi_ie) {
    memcpy(wapi_ie, &in_ie[cnt], in_ie[cnt+1]+2);

    for (i = 0; i < (in_ie[cnt+1]+2); i = i+8) {
     RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\n",
        wapi_ie[i], wapi_ie[i+1], wapi_ie[i+2], wapi_ie[i+3], wapi_ie[i+4],
        wapi_ie[i+5], wapi_ie[i+6], wapi_ie[i+7]));
    }
   }

   if (wapi_len)
    *wapi_len = in_ie[cnt+1]+2;

   cnt += in_ie[cnt+1]+2;
  } else {
   cnt += in_ie[cnt+1]+2;
  }
 }

 if (wapi_len)
  len = *wapi_len;

 return len;
}
