
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ if_data; } ;
struct TYPE_12__ {TYPE_2__ if_u1; } ;
struct TYPE_10__ {scalar_t__ di_size; } ;
struct TYPE_13__ {TYPE_3__ i_df; TYPE_1__ i_d; } ;
typedef TYPE_4__ xfs_inode_t ;
struct TYPE_14__ {int count; } ;
typedef TYPE_5__ xfs_dir2_sf_hdr_t ;
struct TYPE_15__ {int i_mode; } ;


 int ASSERT (int ) ;
 int S_ISDIR (int ) ;
 TYPE_8__* VFS_I (TYPE_4__*) ;
 scalar_t__ XFS_IFORK_DSIZE (TYPE_4__*) ;

int
xfs_dir_isempty(
 xfs_inode_t *dp)
{
 xfs_dir2_sf_hdr_t *sfp;

 ASSERT(S_ISDIR(VFS_I(dp)->i_mode));
 if (dp->i_d.di_size == 0)
  return 1;
 if (dp->i_d.di_size > XFS_IFORK_DSIZE(dp))
  return 0;
 sfp = (xfs_dir2_sf_hdr_t *)dp->i_df.if_u1.if_data;
 return !sfp->count;
}
