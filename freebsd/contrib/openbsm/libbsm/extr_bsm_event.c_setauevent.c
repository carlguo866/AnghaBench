
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int setauevent_locked () ;

void
setauevent(void)
{




 setauevent_locked();



}
