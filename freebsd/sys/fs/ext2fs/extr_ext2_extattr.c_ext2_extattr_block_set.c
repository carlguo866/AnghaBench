
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uio {int uio_resid; } ;
struct m_ext2fs {size_t e2fs_bsize; } ;
struct inode {int i_vnode; int i_facl; int i_blocks; int i_devvp; struct m_ext2fs* i_e2fs; } ;
struct ext2fs_extattr_header {scalar_t__ h_magic; int h_blocks; int h_refcount; struct ext2fs_extattr_entry* h_reserved; scalar_t__ h_hash; } ;
struct ext2fs_extattr_entry {int e_name_len; int e_name; int e_name_index; } ;
struct buf {size_t b_bufsize; scalar_t__ b_data; } ;


 int EINVAL ;
 int EIO ;
 int ENOATTR ;
 int ENOSPC ;
 int ENOTSUP ;
 struct ext2fs_extattr_entry* EXT2_EXTATTR_NEXT (struct ext2fs_extattr_entry*) ;
 struct ext2fs_extattr_entry* EXT2_FIRST_ENTRY (struct buf*) ;
 struct ext2fs_extattr_header* EXT2_HDR (struct buf*) ;
 int EXT2_IS_LAST_ENTRY (struct ext2fs_extattr_entry*) ;
 scalar_t__ EXTATTR_MAGIC ;
 int NOCRED ;
 int bread (int ,int ,size_t,int ,struct buf**) ;
 int brelse (struct buf*) ;
 scalar_t__ btodb (size_t) ;
 int bwrite (struct buf*) ;
 int ext2_alloc_meta (struct inode*) ;
 int ext2_blkfree (struct inode*,int ,size_t) ;
 int ext2_extattr_attrnamespace_to_bsd (int ) ;
 int ext2_extattr_blk_csum_set (struct inode*,struct buf*) ;
 int ext2_extattr_block_check (struct inode*,struct buf*) ;
 int ext2_extattr_block_clone (struct inode*,struct buf**) ;
 size_t ext2_extattr_get_size (struct ext2fs_extattr_entry*,struct ext2fs_extattr_entry*,int,int,int ) ;
 int ext2_extattr_inode_delete (struct inode*,int,char const*) ;
 char* ext2_extattr_name_to_bsd (int ,int ,int*) ;
 char const* ext2_extattr_name_to_linux (int,char const*) ;
 int ext2_extattr_rehash (struct ext2fs_extattr_header*,struct ext2fs_extattr_entry*) ;
 int ext2_extattr_set_exist_entry (scalar_t__,struct ext2fs_extattr_entry*,struct ext2fs_extattr_entry*,scalar_t__,struct uio*) ;
 struct ext2fs_extattr_entry* ext2_extattr_set_new_entry (scalar_t__,struct ext2fs_extattr_entry*,char const*,int,scalar_t__,struct uio*) ;
 int ext2_update (int ,int) ;
 int fsbtodb (struct m_ext2fs*,int ) ;
 struct buf* getblk (int ,int ,size_t,int ,int ,int ) ;
 int memcpy (scalar_t__,struct ext2fs_extattr_header*,int) ;
 int memset (struct ext2fs_extattr_entry*,int ,int) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

int
ext2_extattr_block_set(struct inode *ip, int attrnamespace,
    const char *name, struct uio *uio)
{
 struct m_ext2fs *fs;
 struct buf *bp;
 struct ext2fs_extattr_header *header;
 struct ext2fs_extattr_entry *entry;
 const char *attr_name;
 int name_len;
 size_t size;
 int error;

 fs = ip->i_e2fs;

 if (ip->i_facl) {
  error = bread(ip->i_devvp, fsbtodb(fs, ip->i_facl),
      fs->e2fs_bsize, NOCRED, &bp);
  if (error) {
   return (error);
  }


  header = EXT2_HDR(bp);
  if (header->h_magic != EXTATTR_MAGIC || header->h_blocks != 1) {
   brelse(bp);
   return (EINVAL);
  }

  error = ext2_extattr_block_check(ip, bp);
  if (error) {
   brelse(bp);
   return (error);
  }

  if (header->h_refcount > 1) {
   error = ext2_extattr_block_clone(ip, &bp);
   if (error) {
    brelse(bp);
    return (error);
   }

   header = EXT2_HDR(bp);
  }


  for (entry = EXT2_FIRST_ENTRY(bp); !EXT2_IS_LAST_ENTRY(entry);
      entry = EXT2_EXTATTR_NEXT(entry)) {
   if (ext2_extattr_attrnamespace_to_bsd(entry->e_name_index) !=
       attrnamespace)
    continue;

   name_len = entry->e_name_len;
   attr_name = ext2_extattr_name_to_bsd(entry->e_name_index,
       entry->e_name, &name_len);
   if (!attr_name) {
    brelse(bp);
    return (ENOTSUP);
   }

   if (strlen(name) == name_len &&
       0 == strncmp(attr_name, name, name_len))
    break;
  }

  if (!EXT2_IS_LAST_ENTRY(entry)) {
   size = ext2_extattr_get_size(EXT2_FIRST_ENTRY(bp), entry,
       sizeof(struct ext2fs_extattr_header),
       entry->e_name_len, uio->uio_resid);
   if (size > bp->b_bufsize) {
    brelse(bp);
    return (ENOSPC);
   }

   ext2_extattr_set_exist_entry(bp->b_data, EXT2_FIRST_ENTRY(bp),
       entry, bp->b_data + bp->b_bufsize, uio);
  } else {
   size = ext2_extattr_get_size(EXT2_FIRST_ENTRY(bp), ((void*)0),
       sizeof(struct ext2fs_extattr_header),
       strlen(name), uio->uio_resid);
   if (size > bp->b_bufsize) {
    brelse(bp);
    return (ENOSPC);
   }

   entry = ext2_extattr_set_new_entry(bp->b_data, EXT2_FIRST_ENTRY(bp),
       name, attrnamespace, bp->b_data + bp->b_bufsize, uio);


   error = ext2_extattr_inode_delete(ip, attrnamespace, name);
   if (error && error != ENOATTR) {
    brelse(bp);
    return (error);
   }
  }

  ext2_extattr_rehash(header, entry);
  ext2_extattr_blk_csum_set(ip, bp);

  return (bwrite(bp));
 }

 size = ext2_extattr_get_size(((void*)0), ((void*)0),
     sizeof(struct ext2fs_extattr_header),
     strlen(ext2_extattr_name_to_linux(attrnamespace, name)), uio->uio_resid);
 if (size > fs->e2fs_bsize)
  return (ENOSPC);


 ip->i_facl = ext2_alloc_meta(ip);
 if (0 == ip->i_facl)
  return (ENOSPC);

 ip->i_blocks += btodb(fs->e2fs_bsize);
 ext2_update(ip->i_vnode, 1);

 bp = getblk(ip->i_devvp, fsbtodb(fs, ip->i_facl), fs->e2fs_bsize, 0, 0, 0);
 if (!bp) {
  ext2_blkfree(ip, ip->i_facl, fs->e2fs_bsize);
  ip->i_blocks -= btodb(fs->e2fs_bsize);
  ip->i_facl = 0;
  ext2_update(ip->i_vnode, 1);
  return (EIO);
 }

 header = EXT2_HDR(bp);
 header->h_magic = EXTATTR_MAGIC;
 header->h_refcount = 1;
 header->h_blocks = 1;
 header->h_hash = 0;
 memset(header->h_reserved, 0, sizeof(header->h_reserved));
 memcpy(bp->b_data, header, sizeof(struct ext2fs_extattr_header));
 memset(EXT2_FIRST_ENTRY(bp), 0, sizeof(uint32_t));

 entry = ext2_extattr_set_new_entry(bp->b_data, EXT2_FIRST_ENTRY(bp),
     name, attrnamespace, bp->b_data + bp->b_bufsize, uio);


 error = ext2_extattr_inode_delete(ip, attrnamespace, name);
 if (error && error != ENOATTR) {
  brelse(bp);
  return (error);
 }

 ext2_extattr_rehash(header, entry);
 ext2_extattr_blk_csum_set(ip, bp);

 return (bwrite(bp));
}
