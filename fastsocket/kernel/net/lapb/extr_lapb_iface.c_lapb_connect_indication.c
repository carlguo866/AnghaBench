
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* connect_indication ) (int ,int) ;} ;
struct lapb_cb {int dev; TYPE_1__ callbacks; } ;


 int stub1 (int ,int) ;

void lapb_connect_indication(struct lapb_cb *lapb, int reason)
{
 if (lapb->callbacks.connect_indication)
  lapb->callbacks.connect_indication(lapb->dev, reason);
}
