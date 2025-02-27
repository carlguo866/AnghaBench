
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int IEEE80211_ADDR_LEN ;

__attribute__((used)) static uint8_t
rtwn_get_multi_pos(const uint8_t maddr[])
{
 uint64_t mask = 0x00004d101df481b4;
 uint8_t pos = 0x27;
 int i, j;

 for (i = 0; i < IEEE80211_ADDR_LEN; i++)
  for (j = (i == 0) ? 1 : 0; j < 8; j++)
   if ((maddr[i] >> j) & 1)
    pos ^= (mask >> (i * 8 + j - 1));

 pos &= 0x3f;

 return (pos);
}
