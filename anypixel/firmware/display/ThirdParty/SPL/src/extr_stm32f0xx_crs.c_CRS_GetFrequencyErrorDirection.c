
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ISR; } ;


 TYPE_1__* CRS ;
 int CRS_ISR_FEDIR ;

uint32_t CRS_GetFrequencyErrorDirection(void)
{
  return ((uint32_t)(CRS->ISR & CRS_ISR_FEDIR));
}
