
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rmi_device {TYPE_2__* xport; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* write_block ) (TYPE_2__*,int ,int *,int) ;} ;


 int stub1 (TYPE_2__*,int ,int *,int) ;

__attribute__((used)) static inline int rmi_write(struct rmi_device *d, u16 addr, u8 data)
{
 return d->xport->ops->write_block(d->xport, addr, &data, 1);
}
