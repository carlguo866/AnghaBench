
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_2__ {int mnValue; int mxValue; int iStep; int isDesc; int iValue; int iRowid; } ;
typedef TYPE_1__ series_cursor ;


 int SQLITE_OK ;
 void* sqlite3_value_int64 (int *) ;

__attribute__((used)) static int seriesFilter(
  sqlite3_vtab_cursor *pVtabCursor,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  series_cursor *pCur = (series_cursor *)pVtabCursor;
  int i = 0;
  if( idxNum & 1 ){
    pCur->mnValue = sqlite3_value_int64(argv[i++]);
  }else{
    pCur->mnValue = 0;
  }
  if( idxNum & 2 ){
    pCur->mxValue = sqlite3_value_int64(argv[i++]);
  }else{
    pCur->mxValue = 0xffffffff;
  }
  if( idxNum & 4 ){
    pCur->iStep = sqlite3_value_int64(argv[i++]);
    if( pCur->iStep<1 ) pCur->iStep = 1;
  }else{
    pCur->iStep = 1;
  }
  if( idxNum & 8 ){
    pCur->isDesc = 1;
    pCur->iValue = pCur->mxValue;
    if( pCur->iStep>0 ){
      pCur->iValue -= (pCur->mxValue - pCur->mnValue)%pCur->iStep;
    }
  }else{
    pCur->isDesc = 0;
    pCur->iValue = pCur->mnValue;
  }
  pCur->iRowid = 1;
  return SQLITE_OK;
}
