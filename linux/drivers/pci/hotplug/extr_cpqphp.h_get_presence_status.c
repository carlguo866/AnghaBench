
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct slot {int device; } ;
struct controller {int slot_device_offset; scalar_t__ hpc_reg; } ;


 scalar_t__ INT_INPUT_CLEAR ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline int get_presence_status(struct controller *ctrl,
          struct slot *slot)
{
 int presence_save = 0;
 u8 hp_slot;
 u32 tempdword;

 hp_slot = slot->device - ctrl->slot_device_offset;

 tempdword = readl(ctrl->hpc_reg + INT_INPUT_CLEAR);
 presence_save = (int) ((((~tempdword) >> 23) | ((~tempdword) >> 15))
    >> hp_slot) & 0x02;

 return presence_save;
}
