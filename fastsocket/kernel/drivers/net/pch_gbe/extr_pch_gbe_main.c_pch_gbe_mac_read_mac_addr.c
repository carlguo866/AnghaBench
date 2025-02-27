
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct TYPE_6__ {void** addr; } ;
struct pch_gbe_hw {TYPE_3__ mac; TYPE_2__* reg; } ;
typedef int s32 ;
struct TYPE_5__ {TYPE_1__* mac_adr; } ;
struct TYPE_4__ {int low; int high; } ;


 int ioread32 (int *) ;
 int pr_debug (char*,void**) ;

s32 pch_gbe_mac_read_mac_addr(struct pch_gbe_hw *hw)
{
 u32 adr1a, adr1b;

 adr1a = ioread32(&hw->reg->mac_adr[0].high);
 adr1b = ioread32(&hw->reg->mac_adr[0].low);

 hw->mac.addr[0] = (u8)(adr1a & 0xFF);
 hw->mac.addr[1] = (u8)((adr1a >> 8) & 0xFF);
 hw->mac.addr[2] = (u8)((adr1a >> 16) & 0xFF);
 hw->mac.addr[3] = (u8)((adr1a >> 24) & 0xFF);
 hw->mac.addr[4] = (u8)(adr1b & 0xFF);
 hw->mac.addr[5] = (u8)((adr1b >> 8) & 0xFF);

 pr_debug("hw->mac.addr : %pM\n", hw->mac.addr);
 return 0;
}
