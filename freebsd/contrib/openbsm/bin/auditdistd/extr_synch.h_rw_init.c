
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_rwlock_t ;


 int PJDLOG_ASSERT (int) ;
 int pthread_rwlock_init (int *,int *) ;

__attribute__((used)) static __inline void
rw_init(pthread_rwlock_t *lock)
{
 int error;

 error = pthread_rwlock_init(lock, ((void*)0));
 PJDLOG_ASSERT(error == 0);
}
