
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A6XX_GRAS_SU_POLY_OFFSET_OFFSET__MASK ;
 int A6XX_GRAS_SU_POLY_OFFSET_OFFSET__SHIFT ;
 int fui (float) ;

__attribute__((used)) static inline uint32_t A6XX_GRAS_SU_POLY_OFFSET_OFFSET(float val)
{
 return ((fui(val)) << A6XX_GRAS_SU_POLY_OFFSET_OFFSET__SHIFT) & A6XX_GRAS_SU_POLY_OFFSET_OFFSET__MASK;
}
