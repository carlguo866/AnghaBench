
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A4XX_RB_COPY_CONTROL_GMEM_BASE__MASK ;
 int A4XX_RB_COPY_CONTROL_GMEM_BASE__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_RB_COPY_CONTROL_GMEM_BASE(uint32_t val)
{
 return ((val >> 14) << A4XX_RB_COPY_CONTROL_GMEM_BASE__SHIFT) & A4XX_RB_COPY_CONTROL_GMEM_BASE__MASK;
}
