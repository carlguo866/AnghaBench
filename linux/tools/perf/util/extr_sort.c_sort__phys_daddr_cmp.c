
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct hist_entry {TYPE_2__* mem_info; } ;
typedef int int64_t ;
struct TYPE_3__ {scalar_t__ phys_addr; } ;
struct TYPE_4__ {TYPE_1__ daddr; } ;



__attribute__((used)) static int64_t
sort__phys_daddr_cmp(struct hist_entry *left, struct hist_entry *right)
{
 uint64_t l = 0, r = 0;

 if (left->mem_info)
  l = left->mem_info->daddr.phys_addr;
 if (right->mem_info)
  r = right->mem_info->daddr.phys_addr;

 return (int64_t)(r - l);
}
