
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int time (int *) ;

time_t
getsecs(void)
{
 time_t n = 0;
 time(&n);
 return n;
}
