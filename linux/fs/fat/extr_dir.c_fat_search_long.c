
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct super_block {int dummy; } ;
struct msdos_sb_info {int dummy; } ;
struct msdos_dir_entry {scalar_t__* name; int attr; } ;
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {unsigned char nr_slots; struct msdos_dir_entry* de; struct buffer_head* bh; int i_pos; scalar_t__ slot_off; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ loff_t ;


 int ATTR_EXT ;
 int ATTR_VOLUME ;
 scalar_t__ DELETED_FLAG ;
 int ENOENT ;
 int FAT_MAX_SHORT_SIZE ;
 int FAT_MAX_UNI_CHARS ;
 int FAT_MAX_UNI_SIZE ;
 scalar_t__ IS_FREE (scalar_t__*) ;
 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int PARSE_EOF ;
 int PARSE_INVALID ;
 int PARSE_NOT_LONGNAME ;
 int PATH_MAX ;
 int __putname (int *) ;
 int fat_get_entry (struct inode*,scalar_t__*,struct buffer_head**,struct msdos_dir_entry**) ;
 int fat_make_i_pos (struct super_block*,struct buffer_head*,struct msdos_dir_entry*) ;
 scalar_t__ fat_name_match (struct msdos_sb_info*,unsigned char const*,int,void*,int) ;
 int fat_parse_long (struct inode*,scalar_t__*,struct buffer_head**,struct msdos_dir_entry**,int **,unsigned char*) ;
 int fat_parse_short (struct super_block*,struct msdos_dir_entry*,unsigned char*,int ) ;
 int fat_uni_to_x8 (struct super_block*,int *,void*,int) ;

int fat_search_long(struct inode *inode, const unsigned char *name,
      int name_len, struct fat_slot_info *sinfo)
{
 struct super_block *sb = inode->i_sb;
 struct msdos_sb_info *sbi = MSDOS_SB(sb);
 struct buffer_head *bh = ((void*)0);
 struct msdos_dir_entry *de;
 unsigned char nr_slots;
 wchar_t *unicode = ((void*)0);
 unsigned char bufname[FAT_MAX_SHORT_SIZE];
 loff_t cpos = 0;
 int err, len;

 err = -ENOENT;
 while (1) {
  if (fat_get_entry(inode, &cpos, &bh, &de) == -1)
   goto end_of_dir;
parse_record:
  nr_slots = 0;
  if (de->name[0] == DELETED_FLAG)
   continue;
  if (de->attr != ATTR_EXT && (de->attr & ATTR_VOLUME))
   continue;
  if (de->attr != ATTR_EXT && IS_FREE(de->name))
   continue;
  if (de->attr == ATTR_EXT) {
   int status = fat_parse_long(inode, &cpos, &bh, &de,
          &unicode, &nr_slots);
   if (status < 0) {
    err = status;
    goto end_of_dir;
   } else if (status == PARSE_INVALID)
    continue;
   else if (status == PARSE_NOT_LONGNAME)
    goto parse_record;
   else if (status == PARSE_EOF)
    goto end_of_dir;
  }






  len = fat_parse_short(sb, de, bufname, 0);
  if (len == 0)
   continue;


  if (fat_name_match(sbi, name, name_len, bufname, len))
   goto found;

  if (nr_slots) {
   void *longname = unicode + FAT_MAX_UNI_CHARS;
   int size = PATH_MAX - FAT_MAX_UNI_SIZE;


   len = fat_uni_to_x8(sb, unicode, longname, size);
   if (fat_name_match(sbi, name, name_len, longname, len))
    goto found;
  }
 }

found:
 nr_slots++;
 sinfo->slot_off = cpos - nr_slots * sizeof(*de);
 sinfo->nr_slots = nr_slots;
 sinfo->de = de;
 sinfo->bh = bh;
 sinfo->i_pos = fat_make_i_pos(sb, sinfo->bh, sinfo->de);
 err = 0;
end_of_dir:
 if (unicode)
  __putname(unicode);

 return err;
}
