
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int PJDLOG_ASSERT (int) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static __inline void
mtx_unlock(pthread_mutex_t *lock)
{
 int error;

 error = pthread_mutex_unlock(lock);
 PJDLOG_ASSERT(error == 0);
}
