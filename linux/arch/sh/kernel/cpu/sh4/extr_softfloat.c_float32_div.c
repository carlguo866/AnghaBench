
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int16 ;
typedef int float32 ;
typedef int flag ;
typedef int bits64 ;
typedef int bits32 ;


 int do_div (int,int) ;
 int extractFloat32Exp (int ) ;
 int extractFloat32Frac (int ) ;
 int extractFloat32Sign (int ) ;
 int normalizeFloat32Subnormal (int,int*,int*) ;
 int packFloat32 (int,int,int ) ;
 int roundAndPackFloat32 (int,int,int) ;

float32 float32_div(float32 a, float32 b)
{
 flag aSign, bSign, zSign;
 int16 aExp, bExp, zExp;
 bits32 aSig, bSig;
 uint64_t zSig;

 aSig = extractFloat32Frac(a);
 aExp = extractFloat32Exp(a);
 aSign = extractFloat32Sign(a);
 bSig = extractFloat32Frac(b);
 bExp = extractFloat32Exp(b);
 bSign = extractFloat32Sign(b);
 zSign = aSign ^ bSign;
 if (aExp == 0xFF) {
  if (bExp == 0xFF) {
  }
  return packFloat32(zSign, 0xFF, 0);
 }
 if (bExp == 0xFF) {
  return packFloat32(zSign, 0, 0);
 }
 if (bExp == 0) {
  if (bSig == 0) {
   return packFloat32(zSign, 0xFF, 0);
  }
  normalizeFloat32Subnormal(bSig, &bExp, &bSig);
 }
 if (aExp == 0) {
  if (aSig == 0)
   return packFloat32(zSign, 0, 0);
  normalizeFloat32Subnormal(aSig, &aExp, &aSig);
 }
 zExp = aExp - bExp + 0x7D;
 aSig = (aSig | 0x00800000) << 7;
 bSig = (bSig | 0x00800000) << 8;
 if (bSig <= (aSig + aSig)) {
  aSig >>= 1;
  ++zExp;
 }
 zSig = (((bits64) aSig) << 32);
 do_div(zSig, bSig);

 if ((zSig & 0x3F) == 0) {
  zSig |= (((bits64) bSig) * zSig != ((bits64) aSig) << 32);
 }
 return roundAndPackFloat32(zSign, zExp, (bits32)zSig);

}
