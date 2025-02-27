
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t i64 ;


 int decodeVarint (unsigned char*,size_t*) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static i64 describeContent(
  unsigned char *a,
  i64 nLocal,
  char *zDesc
){
  i64 nDesc = 0;
  int n, j;
  i64 i, x, v;
  const unsigned char *pData;
  const unsigned char *pLimit;
  char sep = ' ';

  pLimit = &a[nLocal];
  n = decodeVarint(a, &x);
  pData = &a[x];
  a += n;
  i = x - n;
  while( i>0 && pData<=pLimit ){
    n = decodeVarint(a, &x);
    a += n;
    i -= n;
    nLocal -= n;
    zDesc[0] = sep;
    sep = ',';
    nDesc++;
    zDesc++;
    if( x==0 ){
      sprintf(zDesc, "*");
    }else if( x>=1 && x<=6 ){
      v = (signed char)pData[0];
      pData++;
      switch( x ){
        case 6: v = (v<<16) + (pData[0]<<8) + pData[1]; pData += 2;
        case 5: v = (v<<16) + (pData[0]<<8) + pData[1]; pData += 2;
        case 4: v = (v<<8) + pData[0]; pData++;
        case 3: v = (v<<8) + pData[0]; pData++;
        case 2: v = (v<<8) + pData[0]; pData++;
      }
      sprintf(zDesc, "%lld", v);
    }else if( x==7 ){
      sprintf(zDesc, "real");
      pData += 8;
    }else if( x==8 ){
      sprintf(zDesc, "0");
    }else if( x==9 ){
      sprintf(zDesc, "1");
    }else if( x>=12 ){
      i64 size = (x-12)/2;
      if( (x&1)==0 ){
        sprintf(zDesc, "blob(%lld)", size);
      }else{
        sprintf(zDesc, "txt(%lld)", size);
      }
      pData += size;
    }
    j = (int)strlen(zDesc);
    zDesc += j;
    nDesc += j;
  }
  return nDesc;
}
