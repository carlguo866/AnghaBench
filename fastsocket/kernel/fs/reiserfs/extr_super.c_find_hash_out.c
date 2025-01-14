
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct super_block {TYPE_1__* s_root; } ;
struct reiserfs_dir_entry {size_t de_entry_num; int * de_deh; int de_namelen; int de_name; } ;
struct inode {int dummy; } ;
struct cpu_key {int dummy; } ;
typedef int __u32 ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int DEFAULT_HASH ;
 scalar_t__ DOT_DOT_OFFSET ;
 scalar_t__ GET_HASH_VALUE (scalar_t__) ;
 int INITIALIZE_PATH (int ) ;
 int IO_ERROR ;
 int NAME_NOT_FOUND ;
 int R5_HASH ;
 int TEA_HASH ;
 int TYPE_DIRENTRY ;
 int UNSET_HASH ;
 int YURA_HASH ;
 scalar_t__ deh_offset (int *) ;
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
 __u32 hash = DEFAULT_HASH;

 inode = s->s_root->d_inode;

 do {
  u32 teahash, r5hash, yurahash;

  make_cpu_key(&key, inode, ~0, TYPE_DIRENTRY, 3);
  retval = search_by_entry_key(s, &key, &path, &de);
  if (retval == IO_ERROR) {
   pathrelse(&path);
   return UNSET_HASH;
  }
  if (retval == NAME_NOT_FOUND)
   de.de_entry_num--;
  set_de_name_and_namelen(&de);
  if (deh_offset(&(de.de_deh[de.de_entry_num])) == DOT_DOT_OFFSET) {

   if (reiserfs_rupasov_hash(s)) {
    hash = YURA_HASH;
   }
   reiserfs_info(s, "FS seems to be empty, autodetect "
      "is using the default hash\n");
   break;
  }
  r5hash = GET_HASH_VALUE(r5_hash(de.de_name, de.de_namelen));
  teahash = GET_HASH_VALUE(keyed_hash(de.de_name, de.de_namelen));
  yurahash = GET_HASH_VALUE(yura_hash(de.de_name, de.de_namelen));
  if (((teahash == r5hash)
       &&
       (GET_HASH_VALUE(deh_offset(&(de.de_deh[de.de_entry_num])))
        == r5hash)) || ((teahash == yurahash)
          && (yurahash ==
       GET_HASH_VALUE(deh_offset
        (&
         (de.
          de_deh[de.
          de_entry_num])))))
      || ((r5hash == yurahash)
   && (yurahash ==
       GET_HASH_VALUE(deh_offset
        (&(de.de_deh[de.de_entry_num])))))) {
   reiserfs_warning(s, "reiserfs-2506", "Unable to "
      "automatically detect hash function. "
      "Please mount with -o "
      "hash={tea,rupasov,r5}");
   hash = UNSET_HASH;
   break;
  }
  if (GET_HASH_VALUE(deh_offset(&(de.de_deh[de.de_entry_num]))) ==
      yurahash)
   hash = YURA_HASH;
  else if (GET_HASH_VALUE
    (deh_offset(&(de.de_deh[de.de_entry_num]))) == teahash)
   hash = TEA_HASH;
  else if (GET_HASH_VALUE
    (deh_offset(&(de.de_deh[de.de_entry_num]))) == r5hash)
   hash = R5_HASH;
  else {
   reiserfs_warning(s, "reiserfs-2506",
      "Unrecognised hash function");
   hash = UNSET_HASH;
  }
 } while (0);

 pathrelse(&path);
 return hash;
}
