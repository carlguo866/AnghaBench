
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int (* _read_port ) (struct intf_hdl*,int ,int ,int *) ;} ;
struct intf_hdl {TYPE_2__ io_ops; } ;
struct _adapter {scalar_t__ surprise_removed; scalar_t__ driver_stopped; TYPE_1__* pio_queue; } ;
struct TYPE_3__ {struct intf_hdl intf; } ;


 int stub1 (struct intf_hdl*,int ,int ,int *) ;

void r8712_read_port(struct _adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
{
 struct intf_hdl *hdl = &adapter->pio_queue->intf;

 if (adapter->driver_stopped || adapter->surprise_removed)
  return;

 hdl->io_ops._read_port(hdl, addr, cnt, pmem);
}
