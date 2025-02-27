
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned long search_start; TYPE_5__* inode; } ;
typedef TYPE_1__ reiserfs_blocknr_hint_t ;
typedef int __u32 ;
struct TYPE_9__ {TYPE_3__* i_sb; } ;
struct TYPE_8__ {int k_objectid; int k_dir_id; } ;
struct TYPE_7__ {int s_blocksize; } ;


 TYPE_4__* INODE_PKEY (TYPE_5__*) ;
 int bmap_hash_id (TYPE_3__*,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void oid_groups(reiserfs_blocknr_hint_t * hint)
{
 if (hint->inode) {
  unsigned long hash;
  __u32 oid;
  __u32 dirid;
  int bm;

  dirid = le32_to_cpu(INODE_PKEY(hint->inode)->k_dir_id);




  if (dirid <= 2)
   hash = (hint->inode->i_sb->s_blocksize << 3);
  else {
   oid = le32_to_cpu(INODE_PKEY(hint->inode)->k_objectid);
   bm = bmap_hash_id(hint->inode->i_sb, oid);
   hash = bm * (hint->inode->i_sb->s_blocksize << 3);
  }
  hint->search_start = hash;
 }
}
