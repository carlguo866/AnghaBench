
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int dummy; } ;
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct fscrypt_name {int member_0; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;


 int ENOENT ;
 int ENOTEMPTY ;
 scalar_t__ IS_ERR (struct ubifs_dent_node*) ;
 int PTR_ERR (struct ubifs_dent_node*) ;
 int kfree (struct ubifs_dent_node*) ;
 int lowest_dent_key (struct ubifs_info*,union ubifs_key*,int ) ;
 struct ubifs_dent_node* ubifs_tnc_next_ent (struct ubifs_info*,union ubifs_key*,struct fscrypt_name*) ;

int ubifs_check_dir_empty(struct inode *dir)
{
 struct ubifs_info *c = dir->i_sb->s_fs_info;
 struct fscrypt_name nm = { 0 };
 struct ubifs_dent_node *dent;
 union ubifs_key key;
 int err;

 lowest_dent_key(c, &key, dir->i_ino);
 dent = ubifs_tnc_next_ent(c, &key, &nm);
 if (IS_ERR(dent)) {
  err = PTR_ERR(dent);
  if (err == -ENOENT)
   err = 0;
 } else {
  kfree(dent);
  err = -ENOTEMPTY;
 }
 return err;
}
