
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_changeset {int bytes_changed; } ;
struct TYPE_8__ {TYPE_2__* root; int io_tree; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_5__ {int objectid; } ;
struct TYPE_6__ {TYPE_1__ root_key; TYPE_3__* fs_info; } ;


 int BTRFS_FS_QUOTA_ENABLED ;
 TYPE_4__* BTRFS_I (struct inode*) ;
 int BTRFS_QGROUP_RSV_DATA ;
 int EXTENT_QGROUP_RESERVED ;
 int QGROUP_FREE ;
 int QGROUP_RELEASE ;
 int WARN_ON (int ) ;
 int btrfs_qgroup_free_refroot (TYPE_3__*,int ,int,int ) ;
 int clear_record_extent_bits (int *,scalar_t__,scalar_t__,int ,struct extent_changeset*) ;
 int extent_changeset_init (struct extent_changeset*) ;
 int extent_changeset_release (struct extent_changeset*) ;
 int qgroup_free_reserved_data (struct inode*,struct extent_changeset*,scalar_t__,scalar_t__) ;
 int test_bit (int ,int *) ;
 int trace_btrfs_qgroup_release_data (struct inode*,scalar_t__,scalar_t__,int,int) ;

__attribute__((used)) static int __btrfs_qgroup_release_data(struct inode *inode,
   struct extent_changeset *reserved, u64 start, u64 len,
   int free)
{
 struct extent_changeset changeset;
 int trace_op = QGROUP_RELEASE;
 int ret;

 if (!test_bit(BTRFS_FS_QUOTA_ENABLED,
        &BTRFS_I(inode)->root->fs_info->flags))
  return 0;


 WARN_ON(!free && reserved);
 if (free && reserved)
  return qgroup_free_reserved_data(inode, reserved, start, len);
 extent_changeset_init(&changeset);
 ret = clear_record_extent_bits(&BTRFS_I(inode)->io_tree, start,
   start + len -1, EXTENT_QGROUP_RESERVED, &changeset);
 if (ret < 0)
  goto out;

 if (free)
  trace_op = QGROUP_FREE;
 trace_btrfs_qgroup_release_data(inode, start, len,
     changeset.bytes_changed, trace_op);
 if (free)
  btrfs_qgroup_free_refroot(BTRFS_I(inode)->root->fs_info,
    BTRFS_I(inode)->root->root_key.objectid,
    changeset.bytes_changed, BTRFS_QGROUP_RSV_DATA);
 ret = changeset.bytes_changed;
out:
 extent_changeset_release(&changeset);
 return ret;
}
