
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_vif {struct wilc* wilc; } ;
struct wilc {struct firmware const* firmware; int dev; } ;
struct net_device {int dummy; } ;
struct firmware {int dummy; } ;


 char* FIRMWARE_1002 ;
 char* FIRMWARE_1003 ;
 int netdev_err (struct net_device*,char*,char*) ;
 int netdev_info (struct net_device*,char*,char*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 scalar_t__ request_firmware (struct firmware const**,char*,int ) ;
 int wilc_get_chipid (struct wilc*,int) ;

__attribute__((used)) static int wilc_wlan_get_firmware(struct net_device *dev)
{
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wilc = vif->wilc;
 int chip_id, ret = 0;
 const struct firmware *wilc_firmware;
 char *firmware;

 chip_id = wilc_get_chipid(wilc, 0);

 if (chip_id < 0x1003a0)
  firmware = FIRMWARE_1002;
 else
  firmware = FIRMWARE_1003;

 netdev_info(dev, "loading firmware %s\n", firmware);

 if (request_firmware(&wilc_firmware, firmware, wilc->dev) != 0) {
  netdev_err(dev, "%s - firmware not available\n", firmware);
  ret = -1;
  goto fail;
 }
 wilc->firmware = wilc_firmware;

fail:

 return ret;
}
