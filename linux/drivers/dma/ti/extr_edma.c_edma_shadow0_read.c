
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_cc {int dummy; } ;


 scalar_t__ EDMA_SHADOW0 ;
 unsigned int edma_read (struct edma_cc*,scalar_t__) ;

__attribute__((used)) static inline unsigned int edma_shadow0_read(struct edma_cc *ecc, int offset)
{
 return edma_read(ecc, EDMA_SHADOW0 + offset);
}
