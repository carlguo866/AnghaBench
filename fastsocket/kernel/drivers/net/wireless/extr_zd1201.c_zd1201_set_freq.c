
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {scalar_t__ e; short m; } ;


 int ZD1201_RID_CNFOWNCHANNEL ;
 short ieee80211_freq_to_dsss_chan (short) ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_mac_reset (struct zd1201*) ;
 int zd1201_setconfig16 (struct zd1201*,int ,short) ;

__attribute__((used)) static int zd1201_set_freq(struct net_device *dev,
    struct iw_request_info *info, struct iw_freq *freq, char *extra)
{
 struct zd1201 *zd = netdev_priv(dev);
 short channel = 0;
 int err;

 if (freq->e == 0)
  channel = freq->m;
 else {
  channel = ieee80211_freq_to_dsss_chan(freq->m);
  if (channel < 0)
   channel = 0;
 }

 err = zd1201_setconfig16(zd, ZD1201_RID_CNFOWNCHANNEL, channel);
 if (err)
  return err;

 zd1201_mac_reset(zd);

 return 0;
}
