
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {int start; scalar_t__ header_size; int item_index; int revision; TYPE_1__* sfile; } ;
typedef TYPE_2__ rep_state_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int rfile; int fs; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__item_offset (int*,int ,int ,int ,int *,int ,int *) ;

__attribute__((used)) static svn_error_t*
auto_set_start_offset(rep_state_t *rs, apr_pool_t *pool)
{
  if (rs->start == -1)
    {
      SVN_ERR(svn_fs_fs__item_offset(&rs->start, rs->sfile->fs,
                                     rs->sfile->rfile, rs->revision, ((void*)0),
                                     rs->item_index, pool));
      rs->start += rs->header_size;
    }

  return SVN_NO_ERROR;
}
