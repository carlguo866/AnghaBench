
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;


 int get_gmoffset (struct tm*) ;
 int get_tmfromtime (struct tm*,int *) ;
 int set_num_711 (unsigned char*,scalar_t__) ;
 int set_num_712 (unsigned char*,char) ;

__attribute__((used)) static void
set_time_915(unsigned char *p, time_t t)
{
 struct tm tm;

 get_tmfromtime(&tm, &t);
 set_num_711(p+0, tm.tm_year);
 set_num_711(p+1, tm.tm_mon+1);
 set_num_711(p+2, tm.tm_mday);
 set_num_711(p+3, tm.tm_hour);
 set_num_711(p+4, tm.tm_min);
 set_num_711(p+5, tm.tm_sec);
 set_num_712(p+6, (char)(get_gmoffset(&tm)/(60*15)));
}
