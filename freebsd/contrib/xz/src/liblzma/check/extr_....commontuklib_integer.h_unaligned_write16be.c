
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline void
unaligned_write16be(uint8_t *buf, uint16_t num)
{
 buf[0] = (uint8_t)(num >> 8);
 buf[1] = (uint8_t)num;
 return;
}
