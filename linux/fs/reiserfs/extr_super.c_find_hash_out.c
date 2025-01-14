
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; } ;
struct reiserfs_dir_entry {int de_entry_num; int de_namelen; int de_name; struct reiserfs_de_head* de_deh; } ;
struct reiserfs_de_head {int dummy; } ;
struct inode {int dummy; } ;
struct cpu_key {int dummy; } ;
typedef scalar_t__ __u32 ;


 scalar_t__ DEFAULT_HASH ;
 scalar_t__ DOT_DOT_OFFSET ;
 scalar_t__ GET_HASH_VALUE (scalar_t__) ;
 int INITIALIZE_PATH (int ) ;
 int IO_ERROR ;
 int NAME_NOT_FOUND ;
 scalar_t__ R5_HASH ;
 scalar_t__ TEA_HASH ;
 int TYPE_DIRENTRY ;
 scalar_t__ UNSET_HASH ;
 scalar_t__ YURA_HASH ;
 struct inode* d_inode (int ) ;
 scalar_t__ deh_offset (struct reiserfs_de_head*) ;
 scalar_t__ keyed_hash (int ,int ) ;
 int make_cpu_key (struct cpu_key*,struct inode*,int ,int ,int) ;
 int path ;
 int pathrelse (int *) ;
 scalar_t__ r5_hash (int ,int ) ;
 int reiserfs_info (struct super_block*,char*) ;
 scalar_t__ reiserfs_rupasov_hash (struct super_block*) ;
 int reiserfs_warning (struct super_block*,char*,char*) ;
 int search_by_entry_key (struct super_block*,struct cpu_key*,int *,struct reiserfs_dir_entry*) ;
 int set_de_name_and_namelen (struct reiserfs_dir_entry*) ;
 scalar_t__ yura_hash (int ,int ) ;

__attribute__((used)) static __u32 find_hash_out(struct super_block *s)
{
 int retval;
 struct inode *inode;
 struct cpu_key key;
 INITIALIZE_PATH(path);
 struct reiserfs_dir_entry de;
 struct reiserfs_de_head *deh;
 __u32 hash = DEFAULT_HASH;
 __u32 deh_hashval, teahash, r5hash, yurahash;

 inode = d_inode(s->s_root);

 make_cpu_key(&key, inode, ~0, TYPE_DIRENTRY, 3);
 retval = search_by_entry_key(s, &key, &path, &de);
 if (retval == IO_ERROR) {
  pathrelse(&path);
  return UNSET_HASH;
 }
 if (retval == NAME_NOT_FOUND)
  de.de_entry_num--;

 set_de_name_and_namelen(&de);
 deh = de.de_deh + de.de_entry_num;

 if (deh_offset(deh) == DOT_DOT_OFFSET) {

  if (reiserfs_rupasov_hash(s))
   hash = YURA_HASH;
  reiserfs_info(s, "FS seems to be empty, autodetect is using the default hash\n");
  goto out;
 }

 deh_hashval = GET_HASH_VALUE(deh_offset(deh));
 r5hash = GET_HASH_VALUE(r5_hash(de.de_name, de.de_namelen));
 teahash = GET_HASH_VALUE(keyed_hash(de.de_name, de.de_namelen));
 yurahash = GET_HASH_VALUE(yura_hash(de.de_name, de.de_namelen));

 if ((teahash == r5hash && deh_hashval == r5hash) ||
     (teahash == yurahash && deh_hashval == yurahash) ||
     (r5hash == yurahash && deh_hashval == yurahash)) {
  reiserfs_warning(s, "reiserfs-2506",
     "Unable to automatically detect hash "
     "function. Please mount with -o "
     "hash={tea,rupasov,r5}");
  hash = UNSET_HASH;
  goto out;
 }

 if (deh_hashval == yurahash)
  hash = YURA_HASH;
 else if (deh_hashval == teahash)
  hash = TEA_HASH;
 else if (deh_hashval == r5hash)
  hash = R5_HASH;
 else {
  reiserfs_warning(s, "reiserfs-2506",
     "Unrecognised hash function");
  hash = UNSET_HASH;
 }
out:
 pathrelse(&path);
 return hash;
}
