
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct alx_hw {scalar_t__ hw_addr; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 alx_read_mem32(struct alx_hw *hw, u32 reg)
{
 return readl(hw->hw_addr + reg);
}
