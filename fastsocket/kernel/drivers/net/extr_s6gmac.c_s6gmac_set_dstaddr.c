
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s6gmac {scalar_t__ reg; } ;


 scalar_t__ S6_GMAC_HOST_DSTADDRHI (int) ;
 scalar_t__ S6_GMAC_HOST_DSTADDRLO (int) ;
 scalar_t__ S6_GMAC_HOST_DSTMASKHI (int) ;
 scalar_t__ S6_GMAC_HOST_DSTMASKLO (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void s6gmac_set_dstaddr(struct s6gmac *pd, int n,
 u32 addrlo, u32 addrhi, u32 masklo, u32 maskhi)
{
 writel(addrlo, pd->reg + S6_GMAC_HOST_DSTADDRLO(n));
 writel(addrhi, pd->reg + S6_GMAC_HOST_DSTADDRHI(n));
 writel(masklo, pd->reg + S6_GMAC_HOST_DSTMASKLO(n));
 writel(maskhi, pd->reg + S6_GMAC_HOST_DSTMASKHI(n));
}
