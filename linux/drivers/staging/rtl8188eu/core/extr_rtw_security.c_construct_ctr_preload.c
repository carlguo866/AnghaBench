
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void construct_ctr_preload(u8 *ctr_preload, int a4_exists, int qc_exists, u8 *mpdu, u8 *pn_vector, int c)
{
 int i;

 for (i = 0; i < 16; i++)
  ctr_preload[i] = 0x00;
 i = 0;

 ctr_preload[0] = 0x01;
 if (qc_exists && a4_exists)
  ctr_preload[1] = mpdu[30] & 0x0f;
 if (qc_exists && !a4_exists)
  ctr_preload[1] = mpdu[24] & 0x0f;

 for (i = 2; i < 8; i++)
  ctr_preload[i] = mpdu[i + 8];
 for (i = 8; i < 14; i++)
  ctr_preload[i] = pn_vector[13 - i];
 ctr_preload[14] = (unsigned char)(c / 256);
 ctr_preload[15] = (unsigned char)(c % 256);
}
