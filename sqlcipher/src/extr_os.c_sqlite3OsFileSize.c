
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
typedef int i64 ;
struct TYPE_6__ {int (* xFileSize ) (TYPE_2__*,int *) ;} ;


 int DO_OS_MALLOC_TEST (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int *) ;

int sqlite3OsFileSize(sqlite3_file *id, i64 *pSize){
  DO_OS_MALLOC_TEST(id);
  return id->pMethods->xFileSize(id, pSize);
}
