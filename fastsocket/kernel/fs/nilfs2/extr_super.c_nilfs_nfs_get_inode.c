
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;


 struct inode* ERR_CAST (struct inode*) ;
 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ NILFS_FIRST_INO (struct super_block*) ;
 scalar_t__ NILFS_ROOT_INO ;
 scalar_t__ NILFS_SKETCH_INO ;
 int iput (struct inode*) ;
 struct inode* nilfs_iget (struct super_block*,scalar_t__) ;

__attribute__((used)) static struct inode *
nilfs_nfs_get_inode(struct super_block *sb, u64 ino, u32 generation)
{
 struct inode *inode;

 if (ino < NILFS_FIRST_INO(sb) && ino != NILFS_ROOT_INO &&
     ino != NILFS_SKETCH_INO)
  return ERR_PTR(-ESTALE);

 inode = nilfs_iget(sb, ino);
 if (IS_ERR(inode))
  return ERR_CAST(inode);
 if (generation && inode->i_generation != generation) {
  iput(inode);
  return ERR_PTR(-ESTALE);
 }

 return inode;
}
