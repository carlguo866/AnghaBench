
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct uwb_dev {TYPE_3__ dev; struct uwb_beca_e* bce; int dev_addr; int mac_addr; } ;
struct uwb_beca_e {struct uwb_dev* uwb_dev; int dev_addr; int * mac_addr; } ;
typedef int macbuf ;
typedef int devbuf ;
struct TYPE_5__ {int name; } ;


 int GFP_KERNEL ;
 int UWB_ADDR_STRSIZE ;
 int UWB_NOTIF_ONAIR ;
 int dev_err (struct device*,char*,char*) ;
 int dev_info (struct device*,char*,char*,char*,int ,int ) ;
 int dev_name (struct device*) ;
 int dev_set_name (TYPE_3__*,char*,char*) ;
 int kfree (struct uwb_dev*) ;
 struct uwb_dev* kzalloc (int,int ) ;
 int uwb_bce_get (struct uwb_beca_e*) ;
 int uwb_bce_put (struct uwb_beca_e*) ;
 TYPE_2__ uwb_bus_type ;
 int uwb_dev_add (struct uwb_dev*,struct device*,struct uwb_rc*) ;
 int uwb_dev_addr_print (char*,int,int *) ;
 int uwb_dev_init (struct uwb_dev*) ;
 int uwb_mac_addr_print (char*,int,int *) ;
 int uwb_notify (struct uwb_rc*,struct uwb_dev*,int ) ;

void uwbd_dev_onair(struct uwb_rc *rc, struct uwb_beca_e *bce)
{
 int result;
 struct device *dev = &rc->uwb_dev.dev;
 struct uwb_dev *uwb_dev;
 char macbuf[UWB_ADDR_STRSIZE], devbuf[UWB_ADDR_STRSIZE];

 uwb_mac_addr_print(macbuf, sizeof(macbuf), bce->mac_addr);
 uwb_dev_addr_print(devbuf, sizeof(devbuf), &bce->dev_addr);
 uwb_dev = kzalloc(sizeof(struct uwb_dev), GFP_KERNEL);
 if (uwb_dev == ((void*)0)) {
  dev_err(dev, "new device %s: Cannot allocate memory\n",
   macbuf);
  return;
 }
 uwb_dev_init(uwb_dev);
 uwb_dev->dev.bus = &uwb_bus_type;
 uwb_dev->mac_addr = *bce->mac_addr;
 uwb_dev->dev_addr = bce->dev_addr;
 dev_set_name(&uwb_dev->dev, "%s", macbuf);


 bce->uwb_dev = uwb_dev;
 uwb_dev->bce = bce;
 uwb_bce_get(bce);

 result = uwb_dev_add(uwb_dev, &rc->uwb_dev.dev, rc);
 if (result < 0) {
  dev_err(dev, "new device %s: cannot instantiate device\n",
   macbuf);
  goto error_dev_add;
 }

 dev_info(dev, "uwb device (mac %s dev %s) connected to %s %s\n",
   macbuf, devbuf, uwb_dev->dev.bus->name,
   dev_name(&(rc->uwb_dev.dev)));
 uwb_notify(rc, uwb_dev, UWB_NOTIF_ONAIR);
 return;

error_dev_add:
 bce->uwb_dev = ((void*)0);
 uwb_bce_put(bce);
 kfree(uwb_dev);
 return;
}
