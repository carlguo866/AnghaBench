
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct grub_xfs_btree_node {scalar_t__* keys; int numrecs; scalar_t__ magic; scalar_t__ level; } ;
typedef int grub_xfs_extent ;
typedef scalar_t__ grub_uint64_t ;
typedef TYPE_5__* grub_fshelp_node_t ;
typedef scalar_t__ grub_disk_addr_t ;
struct TYPE_9__ {scalar_t__ log2_bsize; int bsize; } ;
struct TYPE_13__ {TYPE_2__ sblock; int disk; } ;
struct TYPE_8__ {scalar_t__* keys; int numrecs; } ;
struct TYPE_10__ {int * extents; TYPE_1__ btree; } ;
struct TYPE_11__ {scalar_t__ format; TYPE_3__ data; int nextents; } ;
struct TYPE_12__ {TYPE_7__* data; TYPE_4__ inode; } ;


 scalar_t__ GRUB_DISK_SECTOR_BITS ;
 int GRUB_ERR_BAD_FS ;
 int GRUB_ERR_NOT_IMPLEMENTED_YET ;
 scalar_t__ GRUB_XFS_EXTENT_BLOCK (int *,int) ;
 scalar_t__ GRUB_XFS_EXTENT_OFFSET (int *,int) ;
 scalar_t__ GRUB_XFS_EXTENT_SIZE (int *,int) ;
 scalar_t__ GRUB_XFS_FSB_TO_BLOCK (TYPE_7__*,scalar_t__) ;
 scalar_t__ XFS_INODE_FORMAT_BTREE ;
 scalar_t__ XFS_INODE_FORMAT_EXT ;
 int grub_be_to_cpu16 (int ) ;
 int grub_be_to_cpu32 (int ) ;
 scalar_t__ grub_be_to_cpu64 (scalar_t__) ;
 scalar_t__ grub_disk_read (int ,scalar_t__,int ,int ,struct grub_xfs_btree_node*) ;
 int grub_error (int ,char*,...) ;
 int grub_free (struct grub_xfs_btree_node*) ;
 struct grub_xfs_btree_node* grub_malloc (int ) ;
 scalar_t__ grub_strncmp (char*,char*,int) ;

__attribute__((used)) static grub_disk_addr_t
grub_xfs_read_block (grub_fshelp_node_t node, grub_disk_addr_t fileblock)
{
  struct grub_xfs_btree_node *leaf = 0;
  int ex, nrec;
  grub_xfs_extent *exts;
  grub_uint64_t ret = 0;

  if (node->inode.format == XFS_INODE_FORMAT_BTREE)
    {
      grub_uint64_t *keys;

      leaf = grub_malloc (node->data->sblock.bsize);
      if (leaf == 0)
        return 0;

      nrec = grub_be_to_cpu16 (node->inode.data.btree.numrecs);
      keys = &node->inode.data.btree.keys[0];
      do
        {
          int i;

          for (i = 0; i < nrec; i++)
            {
              if (fileblock < grub_be_to_cpu64 (keys[i]))
                break;
            }


          if (i == 0)
            {
              grub_free (leaf);
              return 0;
            }

          if (grub_disk_read (node->data->disk,
                              grub_be_to_cpu64 (keys[i - 1 + nrec])
                              << (node->data->sblock.log2_bsize
                                  - GRUB_DISK_SECTOR_BITS),
                              0, node->data->sblock.bsize, leaf))
            return 0;

          if (grub_strncmp ((char *) leaf->magic, "BMAP", 4))
            {
              grub_free (leaf);
              grub_error (GRUB_ERR_BAD_FS, "not a correct XFS BMAP node");
              return 0;
            }

          nrec = grub_be_to_cpu16 (leaf->numrecs);
          keys = &leaf->keys[0];
        } while (leaf->level);
      exts = (grub_xfs_extent *) keys;
    }
  else if (node->inode.format == XFS_INODE_FORMAT_EXT)
    {
      nrec = grub_be_to_cpu32 (node->inode.nextents);
      exts = &node->inode.data.extents[0];
    }
  else
    {
      grub_error (GRUB_ERR_NOT_IMPLEMENTED_YET,
    "XFS does not support inode format %d yet",
    node->inode.format);
      return 0;
    }



  for (ex = 0; ex < nrec; ex++)
    {
      grub_uint64_t start = GRUB_XFS_EXTENT_BLOCK (exts, ex);
      grub_uint64_t offset = GRUB_XFS_EXTENT_OFFSET (exts, ex);
      grub_uint64_t size = GRUB_XFS_EXTENT_SIZE (exts, ex);


      if (fileblock < offset)
        break;
      else if (fileblock < offset + size)
        {
          ret = (fileblock - offset + start);
          break;
        }
    }

  if (leaf)
    grub_free (leaf);

  return GRUB_XFS_FSB_TO_BLOCK(node->data, ret);
}
