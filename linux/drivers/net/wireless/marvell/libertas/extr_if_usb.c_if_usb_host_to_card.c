
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct lbs_private {int dnld_sent; struct if_usb_card* card; } ;
struct if_usb_card {scalar_t__ ep_out_buf; TYPE_1__* udev; } ;
typedef int __le32 ;
struct TYPE_2__ {int dev; } ;


 int CMD_TYPE_DATA ;
 int CMD_TYPE_REQUEST ;
 int DNLD_CMD_SENT ;
 int DNLD_DATA_SENT ;
 scalar_t__ MESSAGE_HEADER_LEN ;
 scalar_t__ MVMS_CMD ;
 int cpu_to_le32 (int ) ;
 int lbs_deb_usbd (int *,char*,scalar_t__) ;
 int memcpy (scalar_t__,scalar_t__*,scalar_t__) ;
 int usb_tx_block (struct if_usb_card*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int if_usb_host_to_card(struct lbs_private *priv, uint8_t type,
          uint8_t *payload, uint16_t nb)
{
 struct if_usb_card *cardp = priv->card;

 lbs_deb_usbd(&cardp->udev->dev,"*** type = %u\n", type);
 lbs_deb_usbd(&cardp->udev->dev,"size after = %d\n", nb);

 if (type == MVMS_CMD) {
  *(__le32 *)cardp->ep_out_buf = cpu_to_le32(CMD_TYPE_REQUEST);
  priv->dnld_sent = DNLD_CMD_SENT;
 } else {
  *(__le32 *)cardp->ep_out_buf = cpu_to_le32(CMD_TYPE_DATA);
  priv->dnld_sent = DNLD_DATA_SENT;
 }

 memcpy((cardp->ep_out_buf + MESSAGE_HEADER_LEN), payload, nb);

 return usb_tx_block(cardp, cardp->ep_out_buf, nb + MESSAGE_HEADER_LEN);
}
