
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timespec {unsigned long tv_sec; scalar_t__ tv_nsec; } ;


 int dtrace_getnanotime (struct timespec*) ;

uint64_t
dtrace_gethrestime(void)
{
 struct timespec curtime;

 dtrace_getnanotime(&curtime);

 return (curtime.tv_sec * 1000000000UL + curtime.tv_nsec);
}
