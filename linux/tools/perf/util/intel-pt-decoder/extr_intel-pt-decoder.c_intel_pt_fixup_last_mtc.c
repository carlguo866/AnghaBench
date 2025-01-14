
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void intel_pt_fixup_last_mtc(uint32_t mtc, int mtc_shift,
        uint32_t *last_mtc)
{
 uint32_t first_missing_bit = 1U << (16 - mtc_shift);
 uint32_t mask = ~(first_missing_bit - 1);

 *last_mtc |= mtc & mask;
 if (*last_mtc >= mtc) {
  *last_mtc -= first_missing_bit;
  *last_mtc &= 0xff;
 }
}
