
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int snprintf (char*,int,char*,long long,long long,char,char*) ;
 char* unit ;

__attribute__((used)) static void
format_rate(char *buf, int size, off_t bytes)
{
 int i;

 bytes *= 100;
 for (i = 0; bytes >= 100*1000 && unit[i] != 'T'; i++)
  bytes = (bytes + 512) / 1024;
 if (i == 0) {
  i++;
  bytes = (bytes + 512) / 1024;
 }
 snprintf(buf, size, "%3lld.%1lld%c%s",
     (long long) (bytes + 5) / 100,
     (long long) (bytes + 5) / 10 % 10,
     unit[i],
     i ? "B" : " ");
}
