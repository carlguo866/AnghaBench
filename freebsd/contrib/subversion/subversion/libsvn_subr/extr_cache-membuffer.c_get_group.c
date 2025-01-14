
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* directory; } ;
typedef TYPE_2__ svn_membuffer_t ;
struct TYPE_6__ {size_t next; } ;
struct TYPE_8__ {TYPE_1__ header; } ;
typedef TYPE_3__ entry_group_t ;
typedef size_t apr_uint32_t ;



__attribute__((used)) static entry_group_t *
get_group(svn_membuffer_t *cache,
          apr_uint32_t start_group_index,
          apr_uint32_t chain_index)
{
  entry_group_t *group = &cache->directory[start_group_index];
  for (; chain_index; --chain_index)
    group = &cache->directory[group->header.next];

  return group;
}
