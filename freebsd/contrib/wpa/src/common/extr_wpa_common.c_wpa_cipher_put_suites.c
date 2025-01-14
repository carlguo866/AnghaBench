
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int RSN_SELECTOR_LEN ;
 int RSN_SELECTOR_PUT (int *,int ) ;
 int WPA_CIPHER_CCMP ;
 int WPA_CIPHER_NONE ;
 int WPA_CIPHER_SUITE_CCMP ;
 int WPA_CIPHER_SUITE_NONE ;
 int WPA_CIPHER_SUITE_TKIP ;
 int WPA_CIPHER_TKIP ;
 int WPA_SELECTOR_LEN ;

int wpa_cipher_put_suites(u8 *start, int ciphers)
{
 u8 *pos = start;

 if (ciphers & WPA_CIPHER_CCMP) {
  RSN_SELECTOR_PUT(pos, WPA_CIPHER_SUITE_CCMP);
  pos += WPA_SELECTOR_LEN;
 }
 if (ciphers & WPA_CIPHER_TKIP) {
  RSN_SELECTOR_PUT(pos, WPA_CIPHER_SUITE_TKIP);
  pos += WPA_SELECTOR_LEN;
 }
 if (ciphers & WPA_CIPHER_NONE) {
  RSN_SELECTOR_PUT(pos, WPA_CIPHER_SUITE_NONE);
  pos += WPA_SELECTOR_LEN;
 }

 return (pos - start) / RSN_SELECTOR_LEN;
}
