
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqlite3_uint64 ;
typedef int sqlite3_file ;
struct TYPE_5__ {int iFileId; int pVfslog; TYPE_3__* pReal; } ;
typedef TYPE_2__ VfslogFile ;
struct TYPE_6__ {TYPE_1__* pMethods; } ;
struct TYPE_4__ {int (* xShmUnmap ) (TYPE_3__*,int) ;} ;


 int OS_SHMUNMAP ;
 int stub1 (TYPE_3__*,int) ;
 int vfslog_call (int ,int ,int ,scalar_t__,int,int ,int ) ;
 scalar_t__ vfslog_time () ;

__attribute__((used)) static int vfslogShmUnmap(sqlite3_file *pFile, int deleteFlag){
  int rc;
  sqlite3_uint64 t;
  VfslogFile *p = (VfslogFile *)pFile;
  t = vfslog_time();
  rc = p->pReal->pMethods->xShmUnmap(p->pReal, deleteFlag);
  t = vfslog_time() - t;
  vfslog_call(p->pVfslog, OS_SHMUNMAP, p->iFileId, t, rc, 0, 0);
  return rc;
}
