
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct img_spfi {scalar_t__ regs; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 spfi_readl(struct img_spfi *spfi, u32 reg)
{
 return readl(spfi->regs + reg);
}
