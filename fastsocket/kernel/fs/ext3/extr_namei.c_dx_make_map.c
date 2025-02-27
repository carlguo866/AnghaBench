
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ext3_dir_entry_2 {int rec_len; scalar_t__ name_len; int name; scalar_t__ inode; } ;
struct dx_map_entry {int size; scalar_t__ offs; int hash; } ;
struct dx_hash_info {int hash; } ;


 int cond_resched () ;
 struct ext3_dir_entry_2* ext3_next_entry (struct ext3_dir_entry_2*) ;
 int ext3fs_dirhash (int ,scalar_t__,struct dx_hash_info*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int dx_make_map(struct ext3_dir_entry_2 *de, unsigned blocksize,
  struct dx_hash_info *hinfo, struct dx_map_entry *map_tail)
{
 int count = 0;
 char *base = (char *) de;
 struct dx_hash_info h = *hinfo;

 while ((char *) de < base + blocksize)
 {
  if (de->name_len && de->inode) {
   ext3fs_dirhash(de->name, de->name_len, &h);
   map_tail--;
   map_tail->hash = h.hash;
   map_tail->offs = (u16) ((char *) de - base);
   map_tail->size = le16_to_cpu(de->rec_len);
   count++;
   cond_resched();
  }

  de = ext3_next_entry(de);
 }
 return count;
}
