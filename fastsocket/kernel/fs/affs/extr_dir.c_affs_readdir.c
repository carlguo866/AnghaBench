
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct super_block {int dummy; } ;
struct inode {int i_ino; scalar_t__ i_version; struct super_block* i_sb; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {int f_pos; scalar_t__ f_version; void* private_data; TYPE_1__ f_path; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ (* filldir_t ) (void*,unsigned char*,int,int,int,int ) ;
struct TYPE_10__ {int * table; } ;
struct TYPE_9__ {int s_hashsize; } ;
struct TYPE_8__ {unsigned char* name; int hash_chain; } ;
struct TYPE_7__ {struct inode* d_inode; } ;


 TYPE_5__* AFFS_HEAD (struct buffer_head*) ;
 TYPE_4__* AFFS_SB (struct super_block*) ;
 TYPE_3__* AFFS_TAIL (struct super_block*,struct buffer_head*) ;
 int DT_DIR ;
 int DT_UNKNOWN ;
 int EIO ;
 struct buffer_head* affs_bread (struct super_block*,int) ;
 int affs_brelse (struct buffer_head*) ;
 int affs_error (struct super_block*,char*,char*,int) ;
 int affs_lock_dir (struct inode*) ;
 int affs_unlock_dir (struct inode*) ;
 int affs_warning (struct super_block*,char*,char*) ;
 int be32_to_cpu (int ) ;
 int min (unsigned char,int ) ;
 int parent_ino (TYPE_2__*) ;
 int pr_debug (char*,int,...) ;

__attribute__((used)) static int
affs_readdir(struct file *filp, void *dirent, filldir_t filldir)
{
 struct inode *inode = filp->f_path.dentry->d_inode;
 struct super_block *sb = inode->i_sb;
 struct buffer_head *dir_bh;
 struct buffer_head *fh_bh;
 unsigned char *name;
 int namelen;
 u32 i;
 int hash_pos;
 int chain_pos;
 u32 f_pos;
 u32 ino;
 int stored;
 int res;

 pr_debug("AFFS: readdir(ino=%lu,f_pos=%lx)\n",inode->i_ino,(unsigned long)filp->f_pos);

 stored = 0;
 res = -EIO;
 dir_bh = ((void*)0);
 fh_bh = ((void*)0);
 f_pos = filp->f_pos;

 if (f_pos == 0) {
  filp->private_data = (void *)0;
  if (filldir(dirent, ".", 1, f_pos, inode->i_ino, DT_DIR) < 0)
   return 0;
  filp->f_pos = f_pos = 1;
  stored++;
 }
 if (f_pos == 1) {
  if (filldir(dirent, "..", 2, f_pos, parent_ino(filp->f_path.dentry), DT_DIR) < 0)
   return stored;
  filp->f_pos = f_pos = 2;
  stored++;
 }

 affs_lock_dir(inode);
 chain_pos = (f_pos - 2) & 0xffff;
 hash_pos = (f_pos - 2) >> 16;
 if (chain_pos == 0xffff) {
  affs_warning(sb, "readdir", "More than 65535 entries in chain");
  chain_pos = 0;
  hash_pos++;
  filp->f_pos = ((hash_pos << 16) | chain_pos) + 2;
 }
 dir_bh = affs_bread(sb, inode->i_ino);
 if (!dir_bh)
  goto readdir_out;




 ino = (u32)(long)filp->private_data;
 if (ino && filp->f_version == inode->i_version) {
  pr_debug("AFFS: readdir() left off=%d\n", ino);
  goto inside;
 }

 ino = be32_to_cpu(AFFS_HEAD(dir_bh)->table[hash_pos]);
 for (i = 0; ino && i < chain_pos; i++) {
  fh_bh = affs_bread(sb, ino);
  if (!fh_bh) {
   affs_error(sb, "readdir","Cannot read block %d", i);
   goto readdir_out;
  }
  ino = be32_to_cpu(AFFS_TAIL(sb, fh_bh)->hash_chain);
  affs_brelse(fh_bh);
  fh_bh = ((void*)0);
 }
 if (ino)
  goto inside;
 hash_pos++;

 for (; hash_pos < AFFS_SB(sb)->s_hashsize; hash_pos++) {
  ino = be32_to_cpu(AFFS_HEAD(dir_bh)->table[hash_pos]);
  if (!ino)
   continue;
  f_pos = (hash_pos << 16) + 2;
inside:
  do {
   fh_bh = affs_bread(sb, ino);
   if (!fh_bh) {
    affs_error(sb, "readdir","Cannot read block %d", ino);
    goto readdir_done;
   }

   namelen = min(AFFS_TAIL(sb, fh_bh)->name[0], (u8)30);
   name = AFFS_TAIL(sb, fh_bh)->name + 1;
   pr_debug("AFFS: readdir(): filldir(\"%.*s\", ino=%u), hash=%d, f_pos=%x\n",
     namelen, name, ino, hash_pos, f_pos);
   if (filldir(dirent, name, namelen, f_pos, ino, DT_UNKNOWN) < 0)
    goto readdir_done;
   stored++;
   f_pos++;
   ino = be32_to_cpu(AFFS_TAIL(sb, fh_bh)->hash_chain);
   affs_brelse(fh_bh);
   fh_bh = ((void*)0);
  } while (ino);
 }
readdir_done:
 filp->f_pos = f_pos;
 filp->f_version = inode->i_version;
 filp->private_data = (void *)(long)ino;
 res = stored;

readdir_out:
 affs_brelse(dir_bh);
 affs_brelse(fh_bh);
 affs_unlock_dir(inode);
 pr_debug("AFFS: readdir()=%d\n", stored);
 return res;
}
