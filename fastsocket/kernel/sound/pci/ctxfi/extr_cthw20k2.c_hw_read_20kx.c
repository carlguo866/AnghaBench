
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hw {scalar_t__ mem_base; } ;


 scalar_t__ readl (void*) ;

__attribute__((used)) static u32 hw_read_20kx(struct hw *hw, u32 reg)
{
 return readl((void *)(hw->mem_base + reg));
}
