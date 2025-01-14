
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_dir_entry_2 {scalar_t__ inode; int rec_len; int name_len; } ;
struct dx_map_entry {int offs; } ;


 unsigned int EXT4_DIR_REC_LEN (int ) ;
 int ext4_rec_len_to_disk (unsigned int,unsigned int) ;
 int memcpy (char*,struct ext4_dir_entry_2*,unsigned int) ;

__attribute__((used)) static struct ext4_dir_entry_2 *
dx_move_dirents(char *from, char *to, struct dx_map_entry *map, int count,
  unsigned blocksize)
{
 unsigned rec_len = 0;

 while (count--) {
  struct ext4_dir_entry_2 *de = (struct ext4_dir_entry_2 *)
      (from + (map->offs<<2));
  rec_len = EXT4_DIR_REC_LEN(de->name_len);
  memcpy (to, de, rec_len);
  ((struct ext4_dir_entry_2 *) to)->rec_len =
    ext4_rec_len_to_disk(rec_len, blocksize);
  de->inode = 0;
  map++;
  to += rec_len;
 }
 return (struct ext4_dir_entry_2 *) (to - rec_len);
}
