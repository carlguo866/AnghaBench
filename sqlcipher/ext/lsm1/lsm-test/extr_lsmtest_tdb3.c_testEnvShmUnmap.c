
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_file ;
struct TYPE_4__ {int (* xShmUnmap ) (int ,int) ;} ;
typedef TYPE_1__ lsm_env ;
struct TYPE_5__ {int pReal; } ;
typedef TYPE_2__ LsmFile ;


 int stub1 (int ,int) ;
 TYPE_1__* tdb_lsm_env () ;

__attribute__((used)) static int testEnvShmUnmap(lsm_file *pFile, int bDel){
  LsmFile *p = (LsmFile *)pFile;
  lsm_env *pRealEnv = tdb_lsm_env();
  return pRealEnv->xShmUnmap(p->pReal, bDel);
}
