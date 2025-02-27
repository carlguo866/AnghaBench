
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct usb_device {int dummy; } ;
struct hexline {int addr; int len; int chk; int type; int data; } ;
struct firmware {int dummy; } ;
struct TYPE_12__ {int num_adapters; TYPE_5__* adapter; } ;
struct TYPE_11__ {TYPE_4__* fe; } ;
struct TYPE_7__ {int buffersize; } ;
struct TYPE_8__ {TYPE_1__ bulk; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct TYPE_10__ {TYPE_3__ stream; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int REQUEST_GET_VERSION ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int deb_fwdata (char*,int,int,int) ;
 int dib0700_device_count ;
 TYPE_6__* dib0700_devices ;
 int dib0700_jumpram (struct usb_device*,int) ;
 int dvb_usb_get_hexline (struct firmware const*,struct hexline*,int*) ;
 int err (char*,int,int) ;
 int info (char*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int memcpy (int*,int ,int) ;
 int msleep (int) ;
 int nb_packet_buffer_size ;
 int usb_bulk_msg (struct usb_device*,int ,int*,int,int*,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;

int dib0700_download_firmware(struct usb_device *udev, const struct firmware *fw)
{
 struct hexline hx;
 int pos = 0, ret, act_len, i, adap_num;
 u8 *buf;
 u32 fw_version;

 buf = kmalloc(260, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 while ((ret = dvb_usb_get_hexline(fw, &hx, &pos)) > 0) {
  deb_fwdata("writing to address 0x%08x (buffer: 0x%02x %02x)\n",
    hx.addr, hx.len, hx.chk);

  buf[0] = hx.len;
  buf[1] = (hx.addr >> 8) & 0xff;
  buf[2] = hx.addr & 0xff;
  buf[3] = hx.type;
  memcpy(&buf[4],hx.data,hx.len);
  buf[4+hx.len] = hx.chk;

  ret = usb_bulk_msg(udev,
   usb_sndbulkpipe(udev, 0x01),
   buf,
   hx.len + 5,
   &act_len,
   1000);

  if (ret < 0) {
   err("firmware download failed at %d with %d",pos,ret);
   goto out;
  }
 }

 if (ret == 0) {

  if ((ret = dib0700_jumpram(udev, 0x70000000)) == 0) {
   info("firmware started successfully.");
   msleep(500);
  }
 } else
  ret = -EIO;


 if (nb_packet_buffer_size < 1)
  nb_packet_buffer_size = 1;


 usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
      REQUEST_GET_VERSION,
      USB_TYPE_VENDOR | USB_DIR_IN, 0, 0,
      buf, 16, USB_CTRL_GET_TIMEOUT);
 fw_version = (buf[8] << 24) | (buf[9] << 16) | (buf[10] << 8) | buf[11];



 for (i = 0; i < dib0700_device_count; i++) {
  for (adap_num = 0; adap_num < dib0700_devices[i].num_adapters;
    adap_num++) {
   if (fw_version >= 0x10201) {
    dib0700_devices[i].adapter[adap_num].fe[0].stream.u.bulk.buffersize = 188*nb_packet_buffer_size;
   } else {


    dib0700_devices[i].adapter[adap_num].fe[0].stream.u.bulk.buffersize = ((188*nb_packet_buffer_size+188/2)/512)*512;
    if (dib0700_devices[i].adapter[adap_num].fe[0].stream.u.bulk.buffersize < 512)
     dib0700_devices[i].adapter[adap_num].fe[0].stream.u.bulk.buffersize = 512;
   }
  }
 }
out:
 kfree(buf);
 return ret;
}
