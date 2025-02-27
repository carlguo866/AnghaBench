
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t i64 ;
struct TYPE_4__ {int eFWErr; size_t iBufEnd; size_t iBufStart; size_t iWriteOff; int * aBuffer; int pFd; } ;
typedef TYPE_1__ PmaWriter ;


 scalar_t__ ALWAYS (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3OsWrite (int ,int *,size_t,size_t) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static int vdbePmaWriterFinish(PmaWriter *p, i64 *piEof){
  int rc;
  if( p->eFWErr==0 && ALWAYS(p->aBuffer) && p->iBufEnd>p->iBufStart ){
    p->eFWErr = sqlite3OsWrite(p->pFd,
        &p->aBuffer[p->iBufStart], p->iBufEnd - p->iBufStart,
        p->iWriteOff + p->iBufStart
    );
  }
  *piEof = (p->iWriteOff + p->iBufEnd);
  sqlite3_free(p->aBuffer);
  rc = p->eFWErr;
  memset(p, 0, sizeof(PmaWriter));
  return rc;
}
