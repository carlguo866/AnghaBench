
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ end; scalar_t__ start; } ;
typedef scalar_t__ resource_size_t ;



__attribute__((used)) static void resource_clip(struct resource *res, resource_size_t start,
     resource_size_t end)
{
 resource_size_t low = 0, high = 0;

 if (res->end < start || res->start > end)
  return;

 if (res->start < start)
  low = start - res->start;

 if (res->end > end)
  high = res->end - end;


 if (low > high)
  res->end = start - 1;
 else
  res->start = end + 1;
}
