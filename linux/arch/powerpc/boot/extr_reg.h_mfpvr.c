
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 mfpvr(void)
{
 u32 pvr;
 asm volatile ("mfpvr	%0" : "=r"(pvr));
 return pvr;
}
