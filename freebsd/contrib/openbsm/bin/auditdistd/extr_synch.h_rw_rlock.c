
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_rwlock_t ;


 int PJDLOG_ASSERT (int) ;
 int pthread_rwlock_rdlock (int *) ;

__attribute__((used)) static __inline void
rw_rlock(pthread_rwlock_t *lock)
{
 int error;

 error = pthread_rwlock_rdlock(lock);
 PJDLOG_ASSERT(error == 0);
}
