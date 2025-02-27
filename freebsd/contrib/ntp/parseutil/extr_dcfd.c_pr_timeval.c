
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
typedef int buf ;


 scalar_t__ l_abs (scalar_t__) ;
 int snprintf (char*,int,char*,long,long) ;

__attribute__((used)) static char *
pr_timeval(
 struct timeval *val
 )
{
 static char buf[20];

 if (val->tv_sec == 0)
  snprintf(buf, sizeof(buf), "%c0.%06ld",
    (val->tv_usec < 0) ? '-' : '+',
    (long int)l_abs(val->tv_usec));
 else
  snprintf(buf, sizeof(buf), "%ld.%06ld",
    (long int)val->tv_sec,
    (long int)l_abs(val->tv_usec));
 return buf;
}
