
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int usb_ctrl_mtx; } ;
struct mt76_dev {TYPE_1__ usb; } ;


 int __mt76u_rr (struct mt76_dev*,int) ;
 int __mt76u_wr (struct mt76_dev*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u32 mt76u_rmw(struct mt76_dev *dev, u32 addr,
       u32 mask, u32 val)
{
 mutex_lock(&dev->usb.usb_ctrl_mtx);
 val |= __mt76u_rr(dev, addr) & ~mask;
 __mt76u_wr(dev, addr, val);
 mutex_unlock(&dev->usb.usb_ctrl_mtx);

 return val;
}
