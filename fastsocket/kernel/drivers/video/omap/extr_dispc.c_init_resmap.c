
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resmap {unsigned long start; unsigned int page_cnt; unsigned long* map; } ;


 int GFP_KERNEL ;
 unsigned int PAGE_ALIGN (size_t) ;
 unsigned int PAGE_SIZE ;
 scalar_t__ RESMAP_SIZE (unsigned int) ;
 struct resmap* kzalloc (scalar_t__,int ) ;

__attribute__((used)) static struct resmap *init_resmap(unsigned long start, size_t size)
{
 unsigned page_cnt;
 struct resmap *res_map;

 page_cnt = PAGE_ALIGN(size) / PAGE_SIZE;
 res_map =
     kzalloc(sizeof(struct resmap) + RESMAP_SIZE(page_cnt), GFP_KERNEL);
 if (res_map == ((void*)0))
  return ((void*)0);
 res_map->start = start;
 res_map->page_cnt = page_cnt;
 res_map->map = (unsigned long *)(res_map + 1);
 return res_map;
}
