
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct date {int dummy; } ;


 struct date* gdate (int,struct date*) ;
 struct date* jdate (int,struct date*) ;
 int nswitch ;

__attribute__((used)) static struct date *
sdater(int nd, struct date *d)
{

 if (nswitch < nd)
  return (gdate(nd, d));
 else
  return (jdate(nd, d));
}
