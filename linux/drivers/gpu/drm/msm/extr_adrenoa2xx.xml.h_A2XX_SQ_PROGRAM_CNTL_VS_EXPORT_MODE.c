
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a2xx_sq_ps_vtx_mode { ____Placeholder_a2xx_sq_ps_vtx_mode } a2xx_sq_ps_vtx_mode ;


 int A2XX_SQ_PROGRAM_CNTL_VS_EXPORT_MODE__MASK ;
 int A2XX_SQ_PROGRAM_CNTL_VS_EXPORT_MODE__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_SQ_PROGRAM_CNTL_VS_EXPORT_MODE(enum a2xx_sq_ps_vtx_mode val)
{
 return ((val) << A2XX_SQ_PROGRAM_CNTL_VS_EXPORT_MODE__SHIFT) & A2XX_SQ_PROGRAM_CNTL_VS_EXPORT_MODE__MASK;
}
