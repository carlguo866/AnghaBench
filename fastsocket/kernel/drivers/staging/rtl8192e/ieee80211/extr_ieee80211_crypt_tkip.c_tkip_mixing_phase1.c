
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int Hi16 (int ) ;
 int Lo16 (int ) ;
 int Mk16 (int const,int const) ;
 int PHASE1_LOOP_COUNT ;
 scalar_t__ _S_ (int) ;

__attribute__((used)) static void tkip_mixing_phase1(u16 *TTAK, const u8 *TK, const u8 *TA, u32 IV32)
{
 int i, j;


 TTAK[0] = Lo16(IV32);
 TTAK[1] = Hi16(IV32);
 TTAK[2] = Mk16(TA[1], TA[0]);
 TTAK[3] = Mk16(TA[3], TA[2]);
 TTAK[4] = Mk16(TA[5], TA[4]);

 for (i = 0; i < PHASE1_LOOP_COUNT; i++) {
  j = 2 * (i & 1);
  TTAK[0] += _S_(TTAK[4] ^ Mk16(TK[1 + j], TK[0 + j]));
  TTAK[1] += _S_(TTAK[0] ^ Mk16(TK[5 + j], TK[4 + j]));
  TTAK[2] += _S_(TTAK[1] ^ Mk16(TK[9 + j], TK[8 + j]));
  TTAK[3] += _S_(TTAK[2] ^ Mk16(TK[13 + j], TK[12 + j]));
  TTAK[4] += _S_(TTAK[3] ^ Mk16(TK[1 + j], TK[0 + j])) + i;
 }
}
