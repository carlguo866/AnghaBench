
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct scrub_block {int page_count; TYPE_1__** pagev; scalar_t__ checksum_error; scalar_t__ generation_error; scalar_t__ header_error; } ;
struct TYPE_2__ {int flags; } ;


 int BTRFS_EXTENT_FLAG_DATA ;
 int BTRFS_EXTENT_FLAG_SUPER ;
 int BTRFS_EXTENT_FLAG_TREE_BLOCK ;
 int WARN_ON (int) ;
 int scrub_checksum_data (struct scrub_block*) ;
 int scrub_checksum_super (struct scrub_block*) ;
 int scrub_checksum_tree_block (struct scrub_block*) ;
 int scrub_handle_errored_block (struct scrub_block*) ;

__attribute__((used)) static int scrub_checksum(struct scrub_block *sblock)
{
 u64 flags;
 int ret;
 sblock->header_error = 0;
 sblock->generation_error = 0;
 sblock->checksum_error = 0;

 WARN_ON(sblock->page_count < 1);
 flags = sblock->pagev[0]->flags;
 ret = 0;
 if (flags & BTRFS_EXTENT_FLAG_DATA)
  ret = scrub_checksum_data(sblock);
 else if (flags & BTRFS_EXTENT_FLAG_TREE_BLOCK)
  ret = scrub_checksum_tree_block(sblock);
 else if (flags & BTRFS_EXTENT_FLAG_SUPER)
  (void)scrub_checksum_super(sblock);
 else
  WARN_ON(1);
 if (ret)
  scrub_handle_errored_block(sblock);

 return ret;
}
