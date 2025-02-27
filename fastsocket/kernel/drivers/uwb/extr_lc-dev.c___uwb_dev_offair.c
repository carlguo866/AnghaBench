
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_5__* parent; } ;
struct TYPE_8__ {TYPE_2__ dev; } ;
struct uwb_rc {TYPE_3__ uwb_dev; } ;
struct device {int dummy; } ;
struct uwb_dev {TYPE_4__* bce; int dev_addr; int mac_addr; struct device dev; } ;
typedef int macbuf ;
typedef int devbuf ;
struct TYPE_10__ {TYPE_1__* bus; } ;
struct TYPE_9__ {int node; } ;
struct TYPE_6__ {char* name; } ;


 int UWB_ADDR_STRSIZE ;
 int dev_info (struct device*,char*,char*,char*,char*,char*) ;
 char* dev_name (TYPE_5__*) ;
 int list_del (int *) ;
 int uwb_bce_put (TYPE_4__*) ;
 int uwb_dev_addr_print (char*,int,int *) ;
 int uwb_dev_put (struct uwb_dev*) ;
 int uwb_dev_rm (struct uwb_dev*) ;
 int uwb_mac_addr_print (char*,int,int *) ;

int __uwb_dev_offair(struct uwb_dev *uwb_dev, struct uwb_rc *rc)
{
 struct device *dev = &uwb_dev->dev;
 char macbuf[UWB_ADDR_STRSIZE], devbuf[UWB_ADDR_STRSIZE];

 uwb_mac_addr_print(macbuf, sizeof(macbuf), &uwb_dev->mac_addr);
 uwb_dev_addr_print(devbuf, sizeof(devbuf), &uwb_dev->dev_addr);
 dev_info(dev, "uwb device (mac %s dev %s) disconnected from %s %s\n",
   macbuf, devbuf,
   rc ? rc->uwb_dev.dev.parent->bus->name : "n/a",
   rc ? dev_name(rc->uwb_dev.dev.parent) : "");
 uwb_dev_rm(uwb_dev);
 list_del(&uwb_dev->bce->node);
 uwb_bce_put(uwb_dev->bce);
 uwb_dev_put(uwb_dev);

 return 0;
}
