
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tc90522_config {int fe; } ;
struct i2c_client {int dummy; } ;
struct i2c_board_info {int addr; int type; } ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_8__ {int name; TYPE_1__ dev; int * algo; } ;
struct friio_priv {TYPE_3__ tuner_adap; TYPE_3__* demod_sub_i2c; struct i2c_client* i2c_client_demod; } ;
struct dvb_usb_device {int name; TYPE_2__* udev; int i2c_adap; } ;
struct dvb_usb_adapter {int * fe; } ;
struct TYPE_9__ {struct i2c_board_info demod_info; } ;
struct TYPE_7__ {int dev; } ;


 int ENODEV ;
 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct friio_priv* adap_to_priv (struct dvb_usb_adapter*) ;
 struct i2c_client* dvb_module_probe (char*,int ,int *,int ,struct tc90522_config*) ;
 TYPE_5__ friio_config ;
 int friio_tuner_i2c_algo ;
 int i2c_add_adapter (TYPE_3__*) ;
 int i2c_set_adapdata (TYPE_3__*,struct dvb_usb_device*) ;
 int strlcat (int ,char*,int) ;
 int strscpy (int ,int ,int) ;

__attribute__((used)) static int friio_frontend_attach(struct dvb_usb_adapter *adap)
{
 const struct i2c_board_info *info;
 struct dvb_usb_device *d;
 struct tc90522_config cfg;
 struct i2c_client *cl;
 struct friio_priv *priv;

 info = &friio_config.demod_info;
 d = adap_to_d(adap);
 cl = dvb_module_probe("tc90522", info->type,
         &d->i2c_adap, info->addr, &cfg);
 if (!cl)
  return -ENODEV;
 adap->fe[0] = cfg.fe;


 priv = adap_to_priv(adap);
 priv->i2c_client_demod = cl;
 priv->tuner_adap.algo = &friio_tuner_i2c_algo;
 priv->tuner_adap.dev.parent = &d->udev->dev;
 strscpy(priv->tuner_adap.name, d->name, sizeof(priv->tuner_adap.name));
 strlcat(priv->tuner_adap.name, "-tuner", sizeof(priv->tuner_adap.name));
 priv->demod_sub_i2c = &priv->tuner_adap;
 i2c_set_adapdata(&priv->tuner_adap, d);

 return i2c_add_adapter(&priv->tuner_adap);
}
