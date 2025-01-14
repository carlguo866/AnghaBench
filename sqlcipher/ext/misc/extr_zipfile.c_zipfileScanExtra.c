
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;



 int zipfileGetU32 (int*) ;
 int zipfileRead16 (int*) ;

__attribute__((used)) static int zipfileScanExtra(u8 *aExtra, int nExtra, u32 *pmTime){
  int ret = 0;
  u8 *p = aExtra;
  u8 *pEnd = &aExtra[nExtra];

  while( p<pEnd ){
    u16 id = zipfileRead16(p);
    u16 nByte = zipfileRead16(p);

    switch( id ){
      case 128: {
        u8 b = p[0];
        if( b & 0x01 ){
          *pmTime = zipfileGetU32(&p[1]);
          ret = 1;
        }
        break;
      }
    }

    p += nByte;
  }
  return ret;
}
