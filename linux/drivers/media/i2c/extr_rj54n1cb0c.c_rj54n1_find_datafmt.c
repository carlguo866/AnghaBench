
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rj54n1_datafmt {scalar_t__ code; } ;



__attribute__((used)) static const struct rj54n1_datafmt *rj54n1_find_datafmt(
 u32 code, const struct rj54n1_datafmt *fmt,
 int n)
{
 int i;
 for (i = 0; i < n; i++)
  if (fmt[i].code == code)
   return fmt + i;

 return ((void*)0);
}
