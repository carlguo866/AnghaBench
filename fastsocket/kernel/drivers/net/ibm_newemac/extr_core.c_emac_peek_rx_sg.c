
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct emac_instance {int rx_slot; TYPE_1__* rx_desc; } ;
struct TYPE_2__ {int ctrl; } ;


 int MAL_RX_CTRL_EMPTY ;
 int MAL_RX_CTRL_LAST ;
 int NUM_RX_BUFF ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int emac_peek_rx_sg(void *param)
{
 struct emac_instance *dev = param;

 int slot = dev->rx_slot;
 while (1) {
  u16 ctrl = dev->rx_desc[slot].ctrl;
  if (ctrl & MAL_RX_CTRL_EMPTY)
   return 0;
  else if (ctrl & MAL_RX_CTRL_LAST)
   return 1;

  slot = (slot + 1) % NUM_RX_BUFF;


  if (unlikely(slot == dev->rx_slot))
   return 0;
 }
}
