
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_mutex ;
struct TYPE_3__ {int (* xMutexLeave ) (int *) ;} ;
struct TYPE_4__ {TYPE_1__ mutex; } ;


 int stub1 (int *) ;
 TYPE_2__ wrapped ;

__attribute__((used)) static void wrMutexLeave(sqlite3_mutex *p){
  wrapped.mutex.xMutexLeave(p);
}
