
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ks_wlan_private {int net_dev; } ;
struct hostif_hdr {int event; } ;


 int DATA_WINDOW ;
 scalar_t__ HIF_DATA_REQ ;
 scalar_t__ HIF_REQ_MAX ;
 int REG_STATUS_BUSY ;
 int WRITE_STATUS_REG ;
 int ks7010_sdio_write (struct ks_wlan_private*,int ,int *,unsigned long) ;
 int ks7010_sdio_writeb (struct ks_wlan_private*,int ,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int netdev_err (int ,char*,...) ;

__attribute__((used)) static int write_to_device(struct ks_wlan_private *priv, u8 *buffer,
      unsigned long size)
{
 struct hostif_hdr *hdr;
 int ret;

 hdr = (struct hostif_hdr *)buffer;

 if (le16_to_cpu(hdr->event) < HIF_DATA_REQ ||
     le16_to_cpu(hdr->event) > HIF_REQ_MAX) {
  netdev_err(priv->net_dev, "unknown event=%04X\n", hdr->event);
  return 0;
 }

 ret = ks7010_sdio_write(priv, DATA_WINDOW, buffer, size);
 if (ret) {
  netdev_err(priv->net_dev, "write DATA_WINDOW\n");
  return ret;
 }

 ret = ks7010_sdio_writeb(priv, WRITE_STATUS_REG, REG_STATUS_BUSY);
 if (ret) {
  netdev_err(priv->net_dev, "write WRITE_STATUS_REG\n");
  return ret;
 }

 return 0;
}
