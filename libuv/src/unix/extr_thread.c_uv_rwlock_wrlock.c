
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_rwlock_t ;


 int abort () ;
 scalar_t__ pthread_rwlock_wrlock (int *) ;

void uv_rwlock_wrlock(uv_rwlock_t* rwlock) {
  if (pthread_rwlock_wrlock(rwlock))
    abort();
}
