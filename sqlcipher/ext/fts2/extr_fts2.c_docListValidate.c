
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite_int64 ;
typedef scalar_t__ DocListType ;


 scalar_t__ DL_DOCIDS ;
 scalar_t__ DL_POSITIONS ;
 int POS_COLUMN ;
 int POS_END ;
 int assert (int) ;
 int getVarint (char const*,scalar_t__*) ;
 scalar_t__ getVarint32 (char const*,int*) ;

__attribute__((used)) static void docListValidate(DocListType iType, const char *pData, int nData,
                            sqlite_int64 *pLastDocid){
  sqlite_int64 iPrevDocid = 0;
  assert( nData>0 );
  assert( pData!=0 );
  assert( pData+nData>pData );
  while( nData!=0 ){
    sqlite_int64 iDocidDelta;
    int n = getVarint(pData, &iDocidDelta);
    iPrevDocid += iDocidDelta;
    if( iType>DL_DOCIDS ){
      int iDummy;
      while( 1 ){
        n += getVarint32(pData+n, &iDummy);
        if( iDummy==POS_END ) break;
        if( iDummy==POS_COLUMN ){
          n += getVarint32(pData+n, &iDummy);
        }else if( iType>DL_POSITIONS ){
          n += getVarint32(pData+n, &iDummy);
          n += getVarint32(pData+n, &iDummy);
        }
        assert( n<=nData );
      }
    }
    assert( n<=nData );
    pData += n;
    nData -= n;
  }
  if( pLastDocid ) *pLastDocid = iPrevDocid;
}
