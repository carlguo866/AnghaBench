
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double DOUBLE ;


 double MS_PER_DAY ;
 double NAN ;
 scalar_t__ isnan (double) ;
 double time_from_year (int) ;

__attribute__((used)) static inline DOUBLE year_from_time(DOUBLE time)
{
    int y;

    if(isnan(time))
        return NAN;

    y = 1970 + time/365.25/MS_PER_DAY;

    if(time_from_year(y) > time)
        while(time_from_year(y) > time) y--;
    else
        while(time_from_year(y+1)<=time) y++;

    return y;
}
