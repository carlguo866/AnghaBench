
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct omap_mcpdm {scalar_t__ io_base; } ;


 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline int omap_mcpdm_read(struct omap_mcpdm *mcpdm, u16 reg)
{
 return readl_relaxed(mcpdm->io_base + reg);
}
