
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_threadsize { ____Placeholder_a3xx_threadsize } a3xx_threadsize ;


 int A6XX_SP_GS_CTRL_REG0_THREADSIZE__MASK ;
 int A6XX_SP_GS_CTRL_REG0_THREADSIZE__SHIFT ;

__attribute__((used)) static inline uint32_t A6XX_SP_GS_CTRL_REG0_THREADSIZE(enum a3xx_threadsize val)
{
 return ((val) << A6XX_SP_GS_CTRL_REG0_THREADSIZE__SHIFT) & A6XX_SP_GS_CTRL_REG0_THREADSIZE__MASK;
}
