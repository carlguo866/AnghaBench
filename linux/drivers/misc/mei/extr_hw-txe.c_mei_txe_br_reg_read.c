
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_txe_hw {int * mem_addr; } ;


 size_t BRIDGE_BAR ;
 int mei_txe_reg_read (int ,unsigned long) ;

__attribute__((used)) static inline u32 mei_txe_br_reg_read(struct mei_txe_hw *hw,
    unsigned long offset)
{
 return mei_txe_reg_read(hw->mem_addr[BRIDGE_BAR], offset);
}
