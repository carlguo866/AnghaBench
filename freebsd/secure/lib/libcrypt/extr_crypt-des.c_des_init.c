
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u_int32_t ;
typedef void* u_char ;


 size_t* IP ;
 long* bits24 ;
 long* bits28 ;
 long* bits32 ;
 int* bits8 ;
 long** comp_maskl ;
 long** comp_maskr ;
 int* comp_perm ;
 int des_initialised ;
 size_t* final_perm ;
 long** fp_maskl ;
 long** fp_maskr ;
 int* init_perm ;
 int* inv_comp_perm ;
 int* inv_key_perm ;
 long** ip_maskl ;
 long** ip_maskr ;
 int* key_perm ;
 long** key_perm_maskl ;
 long** key_perm_maskr ;
 void*** m_sbox ;
 long old_rawkey0 ;
 long old_rawkey1 ;
 long old_salt ;
 int* pbox ;
 long** psbox ;
 long saltbits ;
 int** sbox ;
 int** u_sbox ;
 size_t* un_pbox ;

__attribute__((used)) static void
des_init(void)
{
 int i, j, b, k, inbit, obit;
 u_int32_t *p, *il, *ir, *fl, *fr;

 old_rawkey0 = old_rawkey1 = 0L;
 saltbits = 0L;
 old_salt = 0L;
 bits24 = (bits28 = bits32 + 4) + 4;




 for (i = 0; i < 8; i++)
  for (j = 0; j < 64; j++) {
   b = (j & 0x20) | ((j & 1) << 4) | ((j >> 1) & 0xf);
   u_sbox[i][j] = sbox[i][b];
  }





 for (b = 0; b < 4; b++)
  for (i = 0; i < 64; i++)
   for (j = 0; j < 64; j++)
    m_sbox[b][(i << 6) | j] =
     (u_char)((u_sbox[(b << 1)][i] << 4) |
     u_sbox[(b << 1) + 1][j]);





 for (i = 0; i < 64; i++) {
  init_perm[final_perm[i] = IP[i] - 1] = (u_char)i;
  inv_key_perm[i] = 255;
 }





 for (i = 0; i < 56; i++) {
  inv_key_perm[key_perm[i] - 1] = (u_char)i;
  inv_comp_perm[i] = 255;
 }




 for (i = 0; i < 48; i++) {
  inv_comp_perm[comp_perm[i] - 1] = (u_char)i;
 }





 for (k = 0; k < 8; k++) {
  for (i = 0; i < 256; i++) {
   *(il = &ip_maskl[k][i]) = 0L;
   *(ir = &ip_maskr[k][i]) = 0L;
   *(fl = &fp_maskl[k][i]) = 0L;
   *(fr = &fp_maskr[k][i]) = 0L;
   for (j = 0; j < 8; j++) {
    inbit = 8 * k + j;
    if (i & bits8[j]) {
     if ((obit = init_perm[inbit]) < 32)
      *il |= bits32[obit];
     else
      *ir |= bits32[obit-32];
     if ((obit = final_perm[inbit]) < 32)
      *fl |= bits32[obit];
     else
      *fr |= bits32[obit - 32];
    }
   }
  }
  for (i = 0; i < 128; i++) {
   *(il = &key_perm_maskl[k][i]) = 0L;
   *(ir = &key_perm_maskr[k][i]) = 0L;
   for (j = 0; j < 7; j++) {
    inbit = 8 * k + j;
    if (i & bits8[j + 1]) {
     if ((obit = inv_key_perm[inbit]) == 255)
      continue;
     if (obit < 28)
      *il |= bits28[obit];
     else
      *ir |= bits28[obit - 28];
    }
   }
   *(il = &comp_maskl[k][i]) = 0L;
   *(ir = &comp_maskr[k][i]) = 0L;
   for (j = 0; j < 7; j++) {
    inbit = 7 * k + j;
    if (i & bits8[j + 1]) {
     if ((obit=inv_comp_perm[inbit]) == 255)
      continue;
     if (obit < 24)
      *il |= bits24[obit];
     else
      *ir |= bits24[obit - 24];
    }
   }
  }
 }





 for (i = 0; i < 32; i++)
  un_pbox[pbox[i] - 1] = (u_char)i;

 for (b = 0; b < 4; b++)
  for (i = 0; i < 256; i++) {
   *(p = &psbox[b][i]) = 0L;
   for (j = 0; j < 8; j++) {
    if (i & bits8[j])
     *p |= bits32[un_pbox[8 * b + j]];
   }
  }

 des_initialised = 1;
}
