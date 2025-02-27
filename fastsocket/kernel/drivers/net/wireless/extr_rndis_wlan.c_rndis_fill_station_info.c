
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int dummy; } ;
struct TYPE_2__ {int legacy; } ;
struct station_info {int filled; int signal; TYPE_1__ txrate; } ;
typedef int rssi ;
typedef int linkspeed ;
typedef int __le32 ;


 int OID_802_11_RSSI ;
 int OID_GEN_LINK_SPEED ;
 int STATION_INFO_SIGNAL ;
 int STATION_INFO_TX_BITRATE ;
 int le32_to_cpu (int ) ;
 int level_to_qual (int) ;
 int memset (struct station_info*,int ,int) ;
 int rndis_query_oid (struct usbnet*,int ,int *,int*) ;

__attribute__((used)) static void rndis_fill_station_info(struct usbnet *usbdev,
      struct station_info *sinfo)
{
 __le32 linkspeed, rssi;
 int ret, len;

 memset(sinfo, 0, sizeof(*sinfo));

 len = sizeof(linkspeed);
 ret = rndis_query_oid(usbdev, OID_GEN_LINK_SPEED, &linkspeed, &len);
 if (ret == 0) {
  sinfo->txrate.legacy = le32_to_cpu(linkspeed) / 1000;
  sinfo->filled |= STATION_INFO_TX_BITRATE;
 }

 len = sizeof(rssi);
 ret = rndis_query_oid(usbdev, OID_802_11_RSSI, &rssi, &len);
 if (ret == 0) {
  sinfo->signal = level_to_qual(le32_to_cpu(rssi));
  sinfo->filled |= STATION_INFO_SIGNAL;
 }
}
