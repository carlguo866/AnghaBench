
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* xSleep ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ sqlite3_vfs ;
struct TYPE_6__ {TYPE_1__* pParent; } ;
typedef TYPE_2__ fs_vfs_t ;


 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static int fsSleep(sqlite3_vfs *pVfs, int nMicro){
  sqlite3_vfs *pParent = ((fs_vfs_t *)pVfs)->pParent;
  return pParent->xSleep(pParent, nMicro);
}
