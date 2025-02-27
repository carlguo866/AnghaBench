
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct hpfs_dirent {unsigned int namelen; int down; unsigned int length; int name; int not_8x3; int last; } ;
struct dnode {unsigned int first_free; int self; } ;
typedef int secno ;


 struct hpfs_dirent* de_next_de (struct hpfs_dirent*) ;
 unsigned int de_size (unsigned int,int) ;
 struct hpfs_dirent* dnode_end_de (struct dnode*) ;
 struct hpfs_dirent* dnode_first_de (struct dnode*) ;
 int hpfs_compare_names (struct super_block*,unsigned char*,unsigned int,int ,unsigned int,int ) ;
 int hpfs_error (struct super_block*,char*,unsigned char,unsigned int,int ) ;
 int hpfs_is_name_long (unsigned char*,unsigned int) ;
 int memcpy (int ,unsigned char*,unsigned int) ;
 int memmove (char*,struct hpfs_dirent*,int) ;
 int memset (struct hpfs_dirent*,int ,unsigned int) ;

struct hpfs_dirent *hpfs_add_de(struct super_block *s, struct dnode *d, unsigned char *name,
    unsigned namelen, secno down_ptr)
{
 struct hpfs_dirent *de;
 struct hpfs_dirent *de_end = dnode_end_de(d);
 unsigned d_size = de_size(namelen, down_ptr);
 for (de = dnode_first_de(d); de < de_end; de = de_next_de(de)) {
  int c = hpfs_compare_names(s, name, namelen, de->name, de->namelen, de->last);
  if (!c) {
   hpfs_error(s, "name (%c,%d) already exists in dnode %08x", *name, namelen, d->self);
   return ((void*)0);
  }
  if (c < 0) break;
 }
 memmove((char *)de + d_size, de, (char *)de_end - (char *)de);
 memset(de, 0, d_size);
 if (down_ptr) {
  *(int *)((char *)de + d_size - 4) = down_ptr;
  de->down = 1;
 }
 de->length = d_size;
 if (down_ptr) de->down = 1;
 de->not_8x3 = hpfs_is_name_long(name, namelen);
 de->namelen = namelen;
 memcpy(de->name, name, namelen);
 d->first_free += d_size;
 return de;
}
