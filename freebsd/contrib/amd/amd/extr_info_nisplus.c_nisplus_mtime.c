
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int mnt_map ;


 int nisplus_init (int *,char*,int *) ;

int
nisplus_mtime(mnt_map *m, char *map, time_t *tp)
{
  return nisplus_init(m,map, tp);
}
