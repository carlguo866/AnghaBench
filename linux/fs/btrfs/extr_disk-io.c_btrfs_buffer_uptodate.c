
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct extent_buffer {TYPE_2__** pages; } ;
struct TYPE_6__ {int io_tree; } ;
struct TYPE_5__ {TYPE_1__* mapping; } ;
struct TYPE_4__ {struct inode* host; } ;


 TYPE_3__* BTRFS_I (struct inode*) ;
 int EAGAIN ;
 int extent_buffer_uptodate (struct extent_buffer*) ;
 int verify_parent_transid (int *,struct extent_buffer*,int ,int) ;

int btrfs_buffer_uptodate(struct extent_buffer *buf, u64 parent_transid,
     int atomic)
{
 int ret;
 struct inode *btree_inode = buf->pages[0]->mapping->host;

 ret = extent_buffer_uptodate(buf);
 if (!ret)
  return ret;

 ret = verify_parent_transid(&BTRFS_I(btree_inode)->io_tree, buf,
        parent_transid, atomic);
 if (ret == -EAGAIN)
  return ret;
 return !ret;
}
