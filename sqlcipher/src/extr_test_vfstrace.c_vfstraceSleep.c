
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* pRootVfs; } ;
typedef TYPE_1__ vfstrace_info ;
struct TYPE_6__ {int (* xSleep ) (TYPE_2__*,int) ;scalar_t__ pAppData; } ;
typedef TYPE_2__ sqlite3_vfs ;


 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static int vfstraceSleep(sqlite3_vfs *pVfs, int nMicro){
  vfstrace_info *pInfo = (vfstrace_info*)pVfs->pAppData;
  sqlite3_vfs *pRoot = pInfo->pRootVfs;
  return pRoot->xSleep(pRoot, nMicro);
}
