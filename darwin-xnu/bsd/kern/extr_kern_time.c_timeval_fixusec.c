
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int assert (int) ;
 scalar_t__ os_add_overflow (scalar_t__,int,scalar_t__*) ;

__attribute__((used)) static boolean_t
timeval_fixusec(
 struct timeval *t1)
{
 assert(t1->tv_usec >= 0);
 assert(t1->tv_sec >= 0);

 if (t1->tv_usec >= 1000000) {
  if (os_add_overflow(t1->tv_sec, t1->tv_usec / 1000000, &t1->tv_sec))
   return FALSE;
  t1->tv_usec = t1->tv_usec % 1000000;
 }

 return TRUE;
}
