
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void lpc32xx_slc_ecc_copy(uint8_t *spare, const uint32_t *ecc, int count)
{
 int i;

 for (i = 0; i < (count * 3); i += 3) {
  uint32_t ce = ecc[i / 3];
  ce = ~(ce << 2) & 0xFFFFFF;
  spare[i + 2] = (uint8_t)(ce & 0xFF);
  ce >>= 8;
  spare[i + 1] = (uint8_t)(ce & 0xFF);
  ce >>= 8;
  spare[i] = (uint8_t)(ce & 0xFF);
 }
}
