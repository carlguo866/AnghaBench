
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ethtool_cmd {int speed; scalar_t__ duplex; int port; scalar_t__ transceiver; scalar_t__ autoneg; int advertising; } ;
struct de_private {int media_supported; scalar_t__ media_type; unsigned int media_lock; int media_advertise; scalar_t__ de21040; } ;


 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_AUI ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_BNC ;
 int ADVERTISED_TP ;
 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DE_MEDIA_AUI ;
 scalar_t__ DE_MEDIA_BNC ;
 scalar_t__ DE_MEDIA_TP ;
 scalar_t__ DE_MEDIA_TP_AUTO ;
 scalar_t__ DE_MEDIA_TP_FD ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;


 int PORT_TP ;
 int SPEED_10 ;
 scalar_t__ XCVR_INTERNAL ;
 int de_link_down (struct de_private*) ;
 int de_set_media (struct de_private*) ;
 int de_stop_rxtx (struct de_private*) ;

__attribute__((used)) static int __de_set_settings(struct de_private *de, struct ethtool_cmd *ecmd)
{
 u32 new_media;
 unsigned int media_lock;

 if (ecmd->speed != SPEED_10 && ecmd->speed != 5 && ecmd->speed != 2)
  return -EINVAL;
 if (de->de21040 && ecmd->speed == 2)
  return -EINVAL;
 if (ecmd->duplex != DUPLEX_HALF && ecmd->duplex != DUPLEX_FULL)
  return -EINVAL;
 if (ecmd->port != PORT_TP && ecmd->port != 129 && ecmd->port != 128)
  return -EINVAL;
 if (de->de21040 && ecmd->port == 128)
  return -EINVAL;
 if (ecmd->transceiver != XCVR_INTERNAL)
  return -EINVAL;
 if (ecmd->autoneg != AUTONEG_DISABLE && ecmd->autoneg != AUTONEG_ENABLE)
  return -EINVAL;
 if (ecmd->advertising & ~de->media_supported)
  return -EINVAL;
 if (ecmd->autoneg == AUTONEG_ENABLE &&
     (!(ecmd->advertising & ADVERTISED_Autoneg)))
  return -EINVAL;

 switch (ecmd->port) {
 case 129:
  new_media = DE_MEDIA_AUI;
  if (!(ecmd->advertising & ADVERTISED_AUI))
   return -EINVAL;
  break;
 case 128:
  new_media = DE_MEDIA_BNC;
  if (!(ecmd->advertising & ADVERTISED_BNC))
   return -EINVAL;
  break;
 default:
  if (ecmd->autoneg == AUTONEG_ENABLE)
   new_media = DE_MEDIA_TP_AUTO;
  else if (ecmd->duplex == DUPLEX_FULL)
   new_media = DE_MEDIA_TP_FD;
  else
   new_media = DE_MEDIA_TP;
  if (!(ecmd->advertising & ADVERTISED_TP))
   return -EINVAL;
  if (!(ecmd->advertising & (ADVERTISED_10baseT_Full | ADVERTISED_10baseT_Half)))
   return -EINVAL;
  break;
 }

 media_lock = (ecmd->autoneg == AUTONEG_ENABLE) ? 0 : 1;

 if ((new_media == de->media_type) &&
     (media_lock == de->media_lock) &&
     (ecmd->advertising == de->media_advertise))
  return 0;

 de_link_down(de);
 de_stop_rxtx(de);

 de->media_type = new_media;
 de->media_lock = media_lock;
 de->media_advertise = ecmd->advertising;
 de_set_media(de);

 return 0;
}
