
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pack_offset; TYPE_1__* fs; } ;
typedef TYPE_2__ pack_context_t ;
struct TYPE_7__ {int block_size; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef int apr_off_t ;
struct TYPE_5__ {TYPE_3__* fsap_data; } ;



__attribute__((used)) static apr_off_t
get_block_left(pack_context_t *context)
{
  fs_fs_data_t *ffd = context->fs->fsap_data;
  return ffd->block_size - (context->pack_offset % ffd->block_size);
}
