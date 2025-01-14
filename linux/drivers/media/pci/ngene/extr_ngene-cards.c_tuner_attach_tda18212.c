
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct tda18212_config {int if_dvbt_6; int if_dvbt_7; int if_dvbt_8; int if_dvbt2_6; int if_dvbt2_7; int if_dvbt2_8; int if_dvbc; int fe; } ;
struct ngene_channel {int number; int i2c_client_fe; struct i2c_client** i2c_client; int fe; TYPE_1__* dev; } ;
struct i2c_client {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {TYPE_2__* pci_dev; } ;


 scalar_t__ DEMOD_TYPE_STV0367 ;
 int ENODEV ;
 int dev_err (struct device*,char*) ;
 struct i2c_client* dvb_module_probe (char*,int *,struct i2c_adapter*,int,struct tda18212_config*) ;
 struct i2c_adapter* i2c_adapter_from_chan (struct ngene_channel*) ;
 int tuner_tda18212_ping (struct ngene_channel*,struct i2c_adapter*,int) ;

__attribute__((used)) static int tuner_attach_tda18212(struct ngene_channel *chan, u32 dmdtype)
{
 struct device *pdev = &chan->dev->pci_dev->dev;
 struct i2c_adapter *i2c = i2c_adapter_from_chan(chan);
 struct i2c_client *client;
 struct tda18212_config config = {
  .fe = chan->fe,
  .if_dvbt_6 = 3550,
  .if_dvbt_7 = 3700,
  .if_dvbt_8 = 4150,
  .if_dvbt2_6 = 3250,
  .if_dvbt2_7 = 4000,
  .if_dvbt2_8 = 4000,
  .if_dvbc = 5000,
 };
 u8 addr = (chan->number & 1) ? 0x63 : 0x60;






 if (dmdtype == DEMOD_TYPE_STV0367)
  tuner_tda18212_ping(chan, i2c, addr);


 client = dvb_module_probe("tda18212", ((void*)0), i2c, addr, &config);
 if (!client)
  goto err;

 chan->i2c_client[0] = client;
 chan->i2c_client_fe = 1;

 return 0;
err:
 dev_err(pdev, "TDA18212 tuner not found. Device is not fully operational.\n");
 return -ENODEV;
}
