
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct wpa_scan_res {scalar_t__ beacon_ie_len; int ie_len; } ;


 int const WLAN_EID_VENDOR_SPECIFIC ;
 scalar_t__ WPA_GET_BE32 (int const*) ;

const u8 * wpa_scan_get_vendor_ie_beacon(const struct wpa_scan_res *res,
      u32 vendor_type)
{
 const u8 *end, *pos;

 if (res->beacon_ie_len == 0)
  return ((void*)0);

 pos = (const u8 *) (res + 1);
 pos += res->ie_len;
 end = pos + res->beacon_ie_len;

 while (end - pos > 1) {
  if (2 + pos[1] > end - pos)
   break;
  if (pos[0] == WLAN_EID_VENDOR_SPECIFIC && pos[1] >= 4 &&
      vendor_type == WPA_GET_BE32(&pos[2]))
   return pos;
  pos += 2 + pos[1];
 }

 return ((void*)0);
}
