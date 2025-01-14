
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl2832_platform_data {int (* slave_ts_ctrl ) (int ,int) ;} ;
struct rtl28xxu_dev {scalar_t__ chip_id; int i2c_client_demod; struct rtl2832_platform_data rtl2832_platform_data; } ;
struct dvb_usb_device {TYPE_1__* intf; } ;
struct dvb_frontend {int id; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ CHIP_ID_RTL2831U ;
 int SYS_DEMOD_CTL ;
 int dev_dbg (int *,char*,int,...) ;
 struct dvb_usb_device* fe_to_d (struct dvb_frontend*) ;
 struct rtl28xxu_dev* fe_to_priv (struct dvb_frontend*) ;
 int rtl28xxu_wr_reg_mask (struct dvb_usb_device*,int ,int,int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int rtl28xxu_frontend_ctrl(struct dvb_frontend *fe, int onoff)
{
 struct dvb_usb_device *d = fe_to_d(fe);
 struct rtl28xxu_dev *dev = fe_to_priv(fe);
 struct rtl2832_platform_data *pdata = &dev->rtl2832_platform_data;
 int ret;
 u8 val;

 dev_dbg(&d->intf->dev, "fe=%d onoff=%d\n", fe->id, onoff);

 if (dev->chip_id == CHIP_ID_RTL2831U)
  return 0;

 if (fe->id == 0) {

  if (onoff)
   val = 0x48;
  else
   val = 0x00;

  ret = rtl28xxu_wr_reg_mask(d, SYS_DEMOD_CTL, val, 0x48);
  if (ret)
   goto err;
 } else if (fe->id == 1) {

  ret = pdata->slave_ts_ctrl(dev->i2c_client_demod, onoff);
  if (ret)
   goto err;
 }

 return 0;
err:
 dev_dbg(&d->intf->dev, "failed=%d\n", ret);
 return ret;
}
