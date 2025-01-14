
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ext3_xattr_ibody_header {int dummy; } ;
struct ext3_xattr_entry {int e_value_offs; int e_value_size; } ;
struct ext3_inode {int dummy; } ;
struct ext3_iloc {int bh; } ;
struct TYPE_4__ {int i_state; } ;
struct TYPE_3__ {int s_inode_size; } ;


 int ENODATA ;
 int ERANGE ;
 TYPE_2__* EXT3_I (struct inode*) ;
 TYPE_1__* EXT3_SB (int ) ;
 int EXT3_STATE_XATTR ;
 struct ext3_xattr_entry* IFIRST (struct ext3_xattr_ibody_header*) ;
 struct ext3_xattr_ibody_header* IHDR (struct inode*,struct ext3_inode*) ;
 int brelse (int ) ;
 int ext3_get_inode_loc (struct inode*,struct ext3_iloc*) ;
 struct ext3_inode* ext3_raw_inode (struct ext3_iloc*) ;
 int ext3_xattr_check_names (struct ext3_xattr_entry*,void*) ;
 int ext3_xattr_find_entry (struct ext3_xattr_entry**,int,char const*,int,int ) ;
 int le16_to_cpu (int ) ;
 size_t le32_to_cpu (int ) ;
 int memcpy (void*,void*,size_t) ;

__attribute__((used)) static int
ext3_xattr_ibody_get(struct inode *inode, int name_index, const char *name,
       void *buffer, size_t buffer_size)
{
 struct ext3_xattr_ibody_header *header;
 struct ext3_xattr_entry *entry;
 struct ext3_inode *raw_inode;
 struct ext3_iloc iloc;
 size_t size;
 void *end;
 int error;

 if (!(EXT3_I(inode)->i_state & EXT3_STATE_XATTR))
  return -ENODATA;
 error = ext3_get_inode_loc(inode, &iloc);
 if (error)
  return error;
 raw_inode = ext3_raw_inode(&iloc);
 header = IHDR(inode, raw_inode);
 entry = IFIRST(header);
 end = (void *)raw_inode + EXT3_SB(inode->i_sb)->s_inode_size;
 error = ext3_xattr_check_names(entry, end);
 if (error)
  goto cleanup;
 error = ext3_xattr_find_entry(&entry, name_index, name,
          end - (void *)entry, 0);
 if (error)
  goto cleanup;
 size = le32_to_cpu(entry->e_value_size);
 if (buffer) {
  error = -ERANGE;
  if (size > buffer_size)
   goto cleanup;
  memcpy(buffer, (void *)IFIRST(header) +
         le16_to_cpu(entry->e_value_offs), size);
 }
 error = size;

cleanup:
 brelse(iloc.bh);
 return error;
}
