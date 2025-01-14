
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {unsigned int s_blocksize; } ;
struct ocfs2_dir_entry {int name_len; int rec_len; } ;
struct TYPE_3__ {char* id_data; } ;
struct TYPE_4__ {TYPE_1__ i_data; } ;
struct ocfs2_dinode {TYPE_2__ id2; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int EEXIST ;
 int ENOENT ;
 int ENOSPC ;
 unsigned int OCFS2_DIR_REC_LEN (int) ;
 int get_bh (struct buffer_head*) ;
 int i_size_read (struct inode*) ;
 unsigned int le16_to_cpu (int ) ;
 int ocfs2_check_dir_entry (struct inode*,struct ocfs2_dir_entry*,struct buffer_head*,unsigned long) ;
 int ocfs2_dir_trailer_blk_off (struct super_block*) ;
 scalar_t__ ocfs2_dirent_would_fit (struct ocfs2_dir_entry*,unsigned int) ;
 scalar_t__ ocfs2_match (int,char const*,struct ocfs2_dir_entry*) ;
 scalar_t__ ocfs2_new_dir_wants_trailer (struct inode*) ;

__attribute__((used)) static int ocfs2_find_dir_space_id(struct inode *dir, struct buffer_head *di_bh,
       const char *name, int namelen,
       struct buffer_head **ret_de_bh,
       unsigned int *blocks_wanted)
{
 int ret;
 struct super_block *sb = dir->i_sb;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
 struct ocfs2_dir_entry *de, *last_de = ((void*)0);
 char *de_buf, *limit;
 unsigned long offset = 0;
 unsigned int rec_len, new_rec_len, free_space = dir->i_sb->s_blocksize;





 if (ocfs2_new_dir_wants_trailer(dir))
  free_space = ocfs2_dir_trailer_blk_off(sb) - i_size_read(dir);
 else
  free_space = dir->i_sb->s_blocksize - i_size_read(dir);

 de_buf = di->id2.i_data.id_data;
 limit = de_buf + i_size_read(dir);
 rec_len = OCFS2_DIR_REC_LEN(namelen);

 while (de_buf < limit) {
  de = (struct ocfs2_dir_entry *)de_buf;

  if (!ocfs2_check_dir_entry(dir, de, di_bh, offset)) {
   ret = -ENOENT;
   goto out;
  }
  if (ocfs2_match(namelen, name, de)) {
   ret = -EEXIST;
   goto out;
  }





  if (ocfs2_dirent_would_fit(de, rec_len)) {


   *ret_de_bh = di_bh;
   get_bh(*ret_de_bh);
   ret = 0;
   goto out;
  }

  last_de = de;
  de_buf += le16_to_cpu(de->rec_len);
  offset += le16_to_cpu(de->rec_len);
 }






 *blocks_wanted = 1;
 new_rec_len = le16_to_cpu(last_de->rec_len) + free_space;
 if (new_rec_len < (rec_len + OCFS2_DIR_REC_LEN(last_de->name_len)))
  *blocks_wanted = 2;

 ret = -ENOSPC;
out:
 return ret;
}
