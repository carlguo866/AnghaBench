
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A6XX_RB_STENCIL_BUFFER_ARRAY_PITCH__MASK ;
 int A6XX_RB_STENCIL_BUFFER_ARRAY_PITCH__SHIFT ;

__attribute__((used)) static inline uint32_t A6XX_RB_STENCIL_BUFFER_ARRAY_PITCH(uint32_t val)
{
 return ((val >> 6) << A6XX_RB_STENCIL_BUFFER_ARRAY_PITCH__SHIFT) & A6XX_RB_STENCIL_BUFFER_ARRAY_PITCH__MASK;
}
