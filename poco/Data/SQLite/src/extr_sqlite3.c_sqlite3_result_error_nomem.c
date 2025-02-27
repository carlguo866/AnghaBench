
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* pOut; int isError; } ;
typedef TYPE_1__ sqlite3_context ;
struct TYPE_7__ {int mutex; } ;
struct TYPE_6__ {TYPE_4__* db; } ;


 int SQLITE_NOMEM_BKPT ;
 int assert (int ) ;
 int sqlite3OomFault (TYPE_4__*) ;
 int sqlite3VdbeMemSetNull (TYPE_3__*) ;
 int sqlite3_mutex_held (int ) ;

void sqlite3_result_error_nomem(sqlite3_context *pCtx){
  assert( sqlite3_mutex_held(pCtx->pOut->db->mutex) );
  sqlite3VdbeMemSetNull(pCtx->pOut);
  pCtx->isError = SQLITE_NOMEM_BKPT;
  sqlite3OomFault(pCtx->pOut->db);
}
