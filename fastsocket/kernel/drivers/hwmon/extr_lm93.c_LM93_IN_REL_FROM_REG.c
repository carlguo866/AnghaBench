
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static unsigned LM93_IN_REL_FROM_REG(u8 reg, int upper, int vid)
{
 const long uV_offset = upper ? (((reg >> 4 & 0x0f) + 1) * 12500) :
    (((reg >> 0 & 0x0f) + 1) * -25000);
 const long uV_vid = vid * 1000;
 return (uV_vid + uV_offset + 5000) / 10000;
}
