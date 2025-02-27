
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SQLITE_OK ;
 int fuzzCorrupt () ;
 int fuzzGetVarint (int*,int*) ;

__attribute__((used)) static int fuzzChangeSize(u8 *p, int *pSz){
  u8 eType = p[0];
  switch( eType ){
    case 0x00:
    case 0x05:
      *pSz = 1;
      break;

    case 0x01:
    case 0x02:
      *pSz = 9;
      break;

    case 0x03:
    case 0x04: {
      int nTxt;
      int sz;
      sz = fuzzGetVarint(&p[1], &nTxt);
      *pSz = 1 + sz + nTxt;
      break;
    }

    default:
      return fuzzCorrupt();
  }
  return SQLITE_OK;
}
