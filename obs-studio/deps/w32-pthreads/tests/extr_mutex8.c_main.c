
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int Sleep (int) ;
 int assert (int) ;
 int lockCount ;
 int locker ;
 int mutex ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;

int
main()
{
  pthread_t t;

  assert(pthread_mutex_init(&mutex, ((void*)0)) == 0);

  assert(pthread_mutex_lock(&mutex) == 0);

  assert(pthread_create(&t, ((void*)0), locker, ((void*)0)) == 0);

  Sleep(2000);

  assert(lockCount == 1);

  assert(pthread_mutex_unlock(&mutex) == 0);

  return 0;
}
