
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ieee802_1x_mka_sci {int dummy; } ;
struct channel_map {int sci; } ;


 size_t MAXSC ;
 scalar_t__ os_memcmp (int *,struct ieee802_1x_mka_sci*,int) ;

__attribute__((used)) static int macsec_qca_lookup_channel(struct channel_map *map,
         struct ieee802_1x_mka_sci *sci,
         u32 *channel)
{
 u32 i;

 for (i = 0; i < MAXSC; i++) {
  if (os_memcmp(&map[i].sci, sci,
         sizeof(struct ieee802_1x_mka_sci)) == 0) {
   *channel = i;
   return 0;
  }
 }

 return -1;
}
