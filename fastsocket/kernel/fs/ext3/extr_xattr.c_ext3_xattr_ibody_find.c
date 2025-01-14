
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ext3_xattr_info {int name; int name_index; } ;
struct ext3_xattr_ibody_header {int dummy; } ;
struct TYPE_4__ {int not_found; scalar_t__ base; void* end; scalar_t__ here; scalar_t__ first; } ;
struct ext3_xattr_ibody_find {TYPE_1__ s; int iloc; } ;
struct ext3_inode {int dummy; } ;
struct TYPE_6__ {scalar_t__ i_extra_isize; int i_state; } ;
struct TYPE_5__ {int s_inode_size; } ;


 int ENODATA ;
 TYPE_3__* EXT3_I (struct inode*) ;
 TYPE_2__* EXT3_SB (int ) ;
 int EXT3_STATE_XATTR ;
 scalar_t__ IFIRST (struct ext3_xattr_ibody_header*) ;
 struct ext3_xattr_ibody_header* IHDR (struct inode*,struct ext3_inode*) ;
 struct ext3_inode* ext3_raw_inode (int *) ;
 int ext3_xattr_check_names (scalar_t__,void*) ;
 int ext3_xattr_find_entry (scalar_t__*,int ,int ,void*,int ) ;

__attribute__((used)) static int
ext3_xattr_ibody_find(struct inode *inode, struct ext3_xattr_info *i,
        struct ext3_xattr_ibody_find *is)
{
 struct ext3_xattr_ibody_header *header;
 struct ext3_inode *raw_inode;
 int error;

 if (EXT3_I(inode)->i_extra_isize == 0)
  return 0;
 raw_inode = ext3_raw_inode(&is->iloc);
 header = IHDR(inode, raw_inode);
 is->s.base = is->s.first = IFIRST(header);
 is->s.here = is->s.first;
 is->s.end = (void *)raw_inode + EXT3_SB(inode->i_sb)->s_inode_size;
 if (EXT3_I(inode)->i_state & EXT3_STATE_XATTR) {
  error = ext3_xattr_check_names(IFIRST(header), is->s.end);
  if (error)
   return error;

  error = ext3_xattr_find_entry(&is->s.here, i->name_index,
           i->name, is->s.end -
           (void *)is->s.base, 0);
  if (error && error != -ENODATA)
   return error;
  is->s.not_found = error;
 }
 return 0;
}
