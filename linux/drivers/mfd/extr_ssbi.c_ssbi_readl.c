
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ssbi {scalar_t__ base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 ssbi_readl(struct ssbi *ssbi, u32 reg)
{
 return readl(ssbi->base + reg);
}
