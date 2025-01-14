
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usbnet {TYPE_1__* net; int data; } ;
struct sr_data {int * mac_addr; } ;
struct TYPE_2__ {int dev_addr; } ;


 int ETH_ALEN ;
 int SR_CMD_SW_PHY_SELECT ;
 int SR_CMD_WRITE_NODE_ID ;
 int SR_GPIO_GPO2EN ;
 int SR_GPIO_GPO_2 ;
 int SR_GPIO_RSE ;
 int SR_SWRESET_CLEAR ;
 int SR_SWRESET_IPPD ;
 int SR_SWRESET_IPRL ;
 int SR_SWRESET_PRL ;
 int SR_SWRESET_PRTE ;
 int memcpy (int *,int ,int ) ;
 int msleep (int) ;
 int netdev_dbg (TYPE_1__*,char*,int) ;
 int sr9800_set_default_mode (struct usbnet*) ;
 int sr_get_phy_addr (struct usbnet*) ;
 int sr_read_rx_ctl (struct usbnet*) ;
 int sr_sw_reset (struct usbnet*,int) ;
 int sr_write_cmd (struct usbnet*,int ,int,int ,int ,int *) ;
 int sr_write_gpio (struct usbnet*,int,int) ;
 int sr_write_rx_ctl (struct usbnet*,int) ;

__attribute__((used)) static int sr9800_reset(struct usbnet *dev)
{
 struct sr_data *data = (struct sr_data *)&dev->data;
 int ret, embd_phy;
 u16 rx_ctl;

 ret = sr_write_gpio(dev,
   SR_GPIO_RSE | SR_GPIO_GPO_2 | SR_GPIO_GPO2EN, 5);
 if (ret < 0)
  goto out;

 embd_phy = ((sr_get_phy_addr(dev) & 0x1f) == 0x10 ? 1 : 0);

 ret = sr_write_cmd(dev, SR_CMD_SW_PHY_SELECT, embd_phy, 0, 0, ((void*)0));
 if (ret < 0) {
  netdev_dbg(dev->net, "Select PHY #1 failed: %d\n", ret);
  goto out;
 }

 ret = sr_sw_reset(dev, SR_SWRESET_IPPD | SR_SWRESET_PRL);
 if (ret < 0)
  goto out;

 msleep(150);

 ret = sr_sw_reset(dev, SR_SWRESET_CLEAR);
 if (ret < 0)
  goto out;

 msleep(150);

 if (embd_phy) {
  ret = sr_sw_reset(dev, SR_SWRESET_IPRL);
  if (ret < 0)
   goto out;
 } else {
  ret = sr_sw_reset(dev, SR_SWRESET_PRTE);
  if (ret < 0)
   goto out;
 }

 msleep(150);
 rx_ctl = sr_read_rx_ctl(dev);
 netdev_dbg(dev->net, "RX_CTL is 0x%04x after software reset\n", rx_ctl);
 ret = sr_write_rx_ctl(dev, 0x0000);
 if (ret < 0)
  goto out;

 rx_ctl = sr_read_rx_ctl(dev);
 netdev_dbg(dev->net, "RX_CTL is 0x%04x setting to 0x0000\n", rx_ctl);

 ret = sr_sw_reset(dev, SR_SWRESET_PRL);
 if (ret < 0)
  goto out;

 msleep(150);

 ret = sr_sw_reset(dev, SR_SWRESET_IPRL | SR_SWRESET_PRL);
 if (ret < 0)
  goto out;

 msleep(150);

 ret = sr9800_set_default_mode(dev);
 if (ret < 0)
  goto out;


 memcpy(data->mac_addr, dev->net->dev_addr, ETH_ALEN);
 ret = sr_write_cmd(dev, SR_CMD_WRITE_NODE_ID, 0, 0, ETH_ALEN,
       data->mac_addr);
 if (ret < 0)
  goto out;

 return 0;

out:
 return ret;
}
