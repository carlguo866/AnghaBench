
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int HFA384X_EVACK_OFF ;
 int HFA384X_EVENT_MASK ;
 int HFA384X_INTEN_OFF ;
 int HFA384X_OUTW (int,int ) ;

__attribute__((used)) static void hfa384x_enable_interrupts(struct net_device *dev)
{

 HFA384X_OUTW(0xffff, HFA384X_EVACK_OFF);
 HFA384X_OUTW(HFA384X_EVENT_MASK, HFA384X_INTEN_OFF);
}
