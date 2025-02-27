
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {int * state; TYPE_1__* proto; } ;
typedef TYPE_2__ hdlc_device ;
struct TYPE_4__ {int module; int (* detach ) (struct net_device*) ;} ;


 TYPE_2__* dev_to_hdlc (struct net_device*) ;
 int hdlc_setup_dev (struct net_device*) ;
 int kfree (int *) ;
 int module_put (int ) ;
 int stub1 (struct net_device*) ;

void detach_hdlc_protocol(struct net_device *dev)
{
 hdlc_device *hdlc = dev_to_hdlc(dev);

 if (hdlc->proto) {
  if (hdlc->proto->detach)
   hdlc->proto->detach(dev);
  module_put(hdlc->proto->module);
  hdlc->proto = ((void*)0);
 }
 kfree(hdlc->state);
 hdlc->state = ((void*)0);
 hdlc_setup_dev(dev);
}
