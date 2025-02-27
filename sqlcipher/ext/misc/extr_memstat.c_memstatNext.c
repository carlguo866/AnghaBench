
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_3__ {scalar_t__ iRowid; scalar_t__ iDb; scalar_t__ nDb; int* aVal; int * azDb; int db; } ;
typedef TYPE_1__ memstat_cursor ;
struct TYPE_4__ {int mNull; int eType; int eOp; } ;




 scalar_t__ MSV_NROW ;

 int SQLITE_OK ;
 TYPE_2__* aMemstatColumn ;
 int assert (int) ;
 int sqlite3_db_status (int ,int ,int*,int*,int ) ;
 int sqlite3_file_control (int ,int ,int ,void*) ;
 int sqlite3_libversion_number () ;
 int sqlite3_status (int ,int*,int*,int ) ;
 int sqlite3_status64 (int ,int*,int*,int ) ;

__attribute__((used)) static int memstatNext(sqlite3_vtab_cursor *cur){
  memstat_cursor *pCur = (memstat_cursor*)cur;
  int i;
  assert( pCur->iRowid<=MSV_NROW );
  while(1){
    i = (int)pCur->iRowid - 1;
    if( i<0 || (aMemstatColumn[i].mNull & 2)!=0 || (++pCur->iDb)>=pCur->nDb ){
      pCur->iRowid++;
      if( pCur->iRowid>MSV_NROW ) return SQLITE_OK;
      pCur->iDb = 0;
      i++;
    }
    pCur->aVal[0] = 0;
    pCur->aVal[1] = 0;
    switch( aMemstatColumn[i].eType ){
      case 129: {
        if( sqlite3_libversion_number()>=3010000 ){
          sqlite3_status64(aMemstatColumn[i].eOp,
                           &pCur->aVal[0], &pCur->aVal[1],0);
        }else{
          int xCur, xHiwtr;
          sqlite3_status(aMemstatColumn[i].eOp, &xCur, &xHiwtr, 0);
          pCur->aVal[0] = xCur;
          pCur->aVal[1] = xHiwtr;
        }
        break;
      }
      case 130: {
        int xCur, xHiwtr;
        sqlite3_db_status(pCur->db, aMemstatColumn[i].eOp, &xCur, &xHiwtr, 0);
        pCur->aVal[0] = xCur;
        pCur->aVal[1] = xHiwtr;
        break;
      }
      case 128: {
        int rc;
        rc = sqlite3_file_control(pCur->db, pCur->azDb[pCur->iDb],
                                  aMemstatColumn[i].eOp, (void*)&pCur->aVal[0]);
        if( rc!=SQLITE_OK ) continue;
        break;
      }
    }
    break;
  }
  return SQLITE_OK;
}
