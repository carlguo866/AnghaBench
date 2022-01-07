
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {unsigned int s_blocksize; } ;
struct ocfs2_dir_entry {int rec_len; } ;
struct inode {struct super_block* i_sb; } ;


 unsigned int OCFS2_DIR_MIN_REC_LEN ;
 int le16_add_cpu (int *,unsigned int) ;
 int le16_to_cpu (int ) ;
 unsigned int ocfs2_dir_trailer_blk_off (struct super_block*) ;
 unsigned int ocfs2_figure_dirent_hole (struct ocfs2_dir_entry*) ;
 scalar_t__ ocfs2_new_dir_wants_trailer (struct inode*) ;

__attribute__((used)) static unsigned int ocfs2_expand_last_dirent(char *start, unsigned int old_size,
          struct inode *dir)
{
 struct super_block *sb = dir->i_sb;
 struct ocfs2_dir_entry *de;
 struct ocfs2_dir_entry *prev_de;
 char *de_buf, *limit;
 unsigned int new_size = sb->s_blocksize;
 unsigned int bytes, this_hole;
 unsigned int largest_hole = 0;

 if (ocfs2_new_dir_wants_trailer(dir))
  new_size = ocfs2_dir_trailer_blk_off(sb);

 bytes = new_size - old_size;

 limit = start + old_size;
 de_buf = start;
 de = (struct ocfs2_dir_entry *)de_buf;
 do {
  this_hole = ocfs2_figure_dirent_hole(de);
  if (this_hole > largest_hole)
   largest_hole = this_hole;

  prev_de = de;
  de_buf += le16_to_cpu(de->rec_len);
  de = (struct ocfs2_dir_entry *)de_buf;
 } while (de_buf < limit);

 le16_add_cpu(&prev_de->rec_len, bytes);



 this_hole = ocfs2_figure_dirent_hole(prev_de);
 if (this_hole > largest_hole)
  largest_hole = this_hole;

 if (largest_hole >= OCFS2_DIR_MIN_REC_LEN)
  return largest_hole;
 return 0;
}
