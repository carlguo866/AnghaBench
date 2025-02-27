
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int assert (int) ;

__attribute__((used)) static int fuzzPutVarint(u8 *p, int nVal){
  assert( nVal>0 && nVal<2097152 );
  if( nVal<128 ){
    p[0] = (u8)nVal;
    return 1;
  }
  if( nVal<16384 ){
    p[0] = ((nVal >> 7) & 0x7F) | 0x80;
    p[1] = (nVal & 0x7F);
    return 2;
  }

  p[0] = ((nVal >> 14) & 0x7F) | 0x80;
  p[1] = ((nVal >> 7) & 0x7F) | 0x80;
  p[2] = (nVal & 0x7F);
  return 3;
}
