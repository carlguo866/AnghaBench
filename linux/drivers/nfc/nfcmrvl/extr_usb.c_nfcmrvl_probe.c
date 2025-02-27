
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dev; TYPE_3__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dev; } ;
struct nfcmrvl_usb_drv_data {struct nfcmrvl_private* priv; int deferred; int bulk_anchor; int tx_anchor; int txlock; int waker; struct usb_interface* intf; struct usb_device* udev; struct usb_endpoint_descriptor* bulk_rx_ep; struct usb_endpoint_descriptor* bulk_tx_ep; } ;
struct nfcmrvl_private {int support_fw_dnld; } ;
struct nfcmrvl_platform_data {int reset_n_io; } ;
typedef int config ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct TYPE_6__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct nfcmrvl_private*) ;
 int NFCMRVL_PHY_USB ;
 int PTR_ERR (struct nfcmrvl_private*) ;
 struct nfcmrvl_usb_drv_data* devm_kzalloc (int *,int,int ) ;
 int init_usb_anchor (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int memset (struct nfcmrvl_platform_data*,int ,int) ;
 int nfc_info (int *,char*,struct usb_interface*,struct usb_device_id const*) ;
 struct nfcmrvl_private* nfcmrvl_nci_register_dev (int ,struct nfcmrvl_usb_drv_data*,int *,int *,struct nfcmrvl_platform_data*) ;
 int nfcmrvl_waker ;
 int spin_lock_init (int *) ;
 scalar_t__ usb_endpoint_is_bulk_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_bulk_out (struct usb_endpoint_descriptor*) ;
 int usb_ops ;
 int usb_set_intfdata (struct usb_interface*,struct nfcmrvl_usb_drv_data*) ;

__attribute__((used)) static int nfcmrvl_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct usb_endpoint_descriptor *ep_desc;
 struct nfcmrvl_usb_drv_data *drv_data;
 struct nfcmrvl_private *priv;
 int i;
 struct usb_device *udev = interface_to_usbdev(intf);
 struct nfcmrvl_platform_data config;


 memset(&config, 0, sizeof(config));
 config.reset_n_io = -EINVAL;

 nfc_info(&udev->dev, "intf %p id %p\n", intf, id);

 drv_data = devm_kzalloc(&intf->dev, sizeof(*drv_data), GFP_KERNEL);
 if (!drv_data)
  return -ENOMEM;

 for (i = 0; i < intf->cur_altsetting->desc.bNumEndpoints; i++) {
  ep_desc = &intf->cur_altsetting->endpoint[i].desc;

  if (!drv_data->bulk_tx_ep &&
      usb_endpoint_is_bulk_out(ep_desc)) {
   drv_data->bulk_tx_ep = ep_desc;
   continue;
  }

  if (!drv_data->bulk_rx_ep &&
      usb_endpoint_is_bulk_in(ep_desc)) {
   drv_data->bulk_rx_ep = ep_desc;
   continue;
  }
 }

 if (!drv_data->bulk_tx_ep || !drv_data->bulk_rx_ep)
  return -ENODEV;

 drv_data->udev = udev;
 drv_data->intf = intf;

 INIT_WORK(&drv_data->waker, nfcmrvl_waker);
 spin_lock_init(&drv_data->txlock);

 init_usb_anchor(&drv_data->tx_anchor);
 init_usb_anchor(&drv_data->bulk_anchor);
 init_usb_anchor(&drv_data->deferred);

 priv = nfcmrvl_nci_register_dev(NFCMRVL_PHY_USB, drv_data, &usb_ops,
     &intf->dev, &config);
 if (IS_ERR(priv))
  return PTR_ERR(priv);

 drv_data->priv = priv;
 drv_data->priv->support_fw_dnld = 0;

 usb_set_intfdata(intf, drv_data);

 return 0;
}
