
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int PAGE_KERNEL ;
 int __GFP_HIGHMEM ;
 int __GFP_ZERO ;
 void* __vmalloc (unsigned long,int,int ) ;

void *vzalloc(unsigned long size)
{
 return __vmalloc(size, GFP_KERNEL | __GFP_HIGHMEM | __GFP_ZERO,
   PAGE_KERNEL);
}
