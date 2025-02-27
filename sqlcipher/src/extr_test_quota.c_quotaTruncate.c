
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
struct TYPE_11__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_12__ {int iSize; } ;
typedef TYPE_3__ quotaGroup ;
struct TYPE_13__ {scalar_t__ iSize; TYPE_3__* pGroup; } ;
typedef TYPE_4__ quotaFile ;
struct TYPE_14__ {TYPE_4__* pFile; } ;
typedef TYPE_5__ quotaConn ;
struct TYPE_10__ {int (* xTruncate ) (TYPE_2__*,scalar_t__) ;} ;


 int SQLITE_OK ;
 int quotaEnter () ;
 int quotaLeave () ;
 TYPE_2__* quotaSubOpen (TYPE_2__*) ;
 int stub1 (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int quotaTruncate(sqlite3_file *pConn, sqlite3_int64 size){
  quotaConn *p = (quotaConn*)pConn;
  sqlite3_file *pSubOpen = quotaSubOpen(pConn);
  int rc = pSubOpen->pMethods->xTruncate(pSubOpen, size);
  quotaFile *pFile = p->pFile;
  quotaGroup *pGroup;
  if( rc==SQLITE_OK ){
    quotaEnter();
    pGroup = pFile->pGroup;
    pGroup->iSize -= pFile->iSize;
    pFile->iSize = size;
    pGroup->iSize += size;
    quotaLeave();
  }
  return rc;
}
