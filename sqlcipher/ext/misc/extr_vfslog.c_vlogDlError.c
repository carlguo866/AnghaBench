
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_3__ {int (* xDlError ) (TYPE_1__*,int,char*) ;} ;


 TYPE_1__* REALVFS (int *) ;
 int stub1 (TYPE_1__*,int,char*) ;

__attribute__((used)) static void vlogDlError(sqlite3_vfs *pVfs, int nByte, char *zErrMsg){
  REALVFS(pVfs)->xDlError(REALVFS(pVfs), nByte, zErrMsg);
}
