
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A4XX_RB_BLEND_RED_F32__MASK ;
 int A4XX_RB_BLEND_RED_F32__SHIFT ;
 int fui (float) ;

__attribute__((used)) static inline uint32_t A4XX_RB_BLEND_RED_F32(float val)
{
 return ((fui(val)) << A4XX_RB_BLEND_RED_F32__SHIFT) & A4XX_RB_BLEND_RED_F32__MASK;
}
