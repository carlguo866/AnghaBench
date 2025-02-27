
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct npcm_pspi {scalar_t__ base; } ;


 scalar_t__ NPCM_PSPI_CTL1 ;
 int ioread16 (scalar_t__) ;
 int iowrite16 (int ,scalar_t__) ;

__attribute__((used)) static inline void npcm_pspi_irq_disable(struct npcm_pspi *priv, u16 mask)
{
 u16 val;

 val = ioread16(priv->base + NPCM_PSPI_CTL1);
 val &= ~mask;
 iowrite16(val, priv->base + NPCM_PSPI_CTL1);
}
