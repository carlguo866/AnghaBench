
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* path_count ;
 scalar_t__* path_limits ;

__attribute__((used)) static int path_count_inc(int nests)
{

 if (nests == 0)
  return 0;

 if (++path_count[nests] > path_limits[nests])
  return -1;
 return 0;
}
