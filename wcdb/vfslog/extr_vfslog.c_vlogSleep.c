
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_3__ {int (* xSleep ) (TYPE_1__*,int) ;} ;


 TYPE_1__* REALVFS (int *) ;
 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static int vlogSleep(sqlite3_vfs *pVfs, int nMicro)
{
    return REALVFS(pVfs)->xSleep(REALVFS(pVfs), nMicro);
}
