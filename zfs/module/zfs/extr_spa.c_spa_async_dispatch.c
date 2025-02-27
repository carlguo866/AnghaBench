
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int spa_async_lock; int * spa_async_thread; int spa_async_suspended; } ;
typedef TYPE_1__ spa_t ;


 int TS_RUN ;
 int maxclsyspri ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int p0 ;
 int * rootdir ;
 scalar_t__ spa_async_tasks_pending (TYPE_1__*) ;
 int spa_async_thread ;
 int * thread_create (int *,int ,int ,TYPE_1__*,int ,int *,int ,int ) ;

__attribute__((used)) static void
spa_async_dispatch(spa_t *spa)
{
 mutex_enter(&spa->spa_async_lock);
 if (spa_async_tasks_pending(spa) &&
     !spa->spa_async_suspended &&
     spa->spa_async_thread == ((void*)0) &&
     rootdir != ((void*)0))
  spa->spa_async_thread = thread_create(((void*)0), 0,
      spa_async_thread, spa, 0, &p0, TS_RUN, maxclsyspri);
 mutex_exit(&spa->spa_async_lock);
}
