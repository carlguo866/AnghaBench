
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w1_master {scalar_t__ pullup_duration; TYPE_1__* bus_master; scalar_t__ enable_pullup; } ;
struct TYPE_2__ {int data; int (* set_pullup ) (int ,int ) ;} ;


 int msleep (scalar_t__) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void w1_post_write(struct w1_master *dev)
{
 if (dev->pullup_duration) {
  if (dev->enable_pullup && dev->bus_master->set_pullup)
   dev->bus_master->set_pullup(dev->bus_master->data, 0);
  else
   msleep(dev->pullup_duration);
  dev->pullup_duration = 0;
 }
}
