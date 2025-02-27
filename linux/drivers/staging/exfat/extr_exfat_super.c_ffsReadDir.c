
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct uni_name_t {int* name; } ;
struct timestamp_t {int sec; int min; int hour; int day; int mon; int year; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fs_info_t {scalar_t__ root_dir; int cluster_size_bits; int dentries_in_root; int dentries_per_clu; scalar_t__ vol_type; int v_sem; scalar_t__ dev_ejected; struct fs_func* fs_func; } ;
struct fs_func {scalar_t__ (* get_entry_type ) (struct dentry_t*) ;int (* get_entry_size ) (struct dentry_t*) ;int (* get_uni_name_from_ext_entry ) (struct super_block*,struct chain_t*,int,int*) ;int (* get_entry_time ) (struct dentry_t*,struct timestamp_t*,int ) ;int (* get_entry_attr ) (struct dentry_t*) ;} ;
struct file_id_t {scalar_t__ type; int entry; scalar_t__ start_clu; int size; int flags; int hint_last_off; scalar_t__ hint_last_clu; void* rwoffset; } ;
struct dos_dentry_t {int dummy; } ;
struct TYPE_6__ {scalar_t__ MilliSecond; int Second; int Minute; int Hour; int Day; int Month; int Year; } ;
struct TYPE_5__ {scalar_t__ MilliSecond; int Second; int Minute; int Hour; int Day; int Month; int Year; } ;
struct dir_entry_t {char* Name; char* ShortName; int Size; int AccessTimestamp; TYPE_2__ ModifyTimestamp; TYPE_1__ CreateTimestamp; int Attr; } ;
struct dentry_t {int dummy; } ;
struct date_time_t {int dummy; } ;
struct chain_t {scalar_t__ dir; int flags; int size; } ;
typedef int sector_t ;
typedef void* s64 ;
typedef int s32 ;
struct TYPE_8__ {struct file_id_t fid; } ;
struct TYPE_7__ {struct fs_info_t fs_info; } ;


 scalar_t__ CLUSTER_32 (int ) ;
 scalar_t__ EXFAT ;
 TYPE_4__* EXFAT_I (struct inode*) ;
 TYPE_3__* EXFAT_SB (struct super_block*) ;
 int FAT_read (struct super_block*,scalar_t__,scalar_t__*) ;
 int FFS_ERROR ;
 int FFS_MEDIAERR ;
 int FFS_PERMISSIONERR ;
 int FFS_SUCCESS ;
 int TM_CREATE ;
 int TM_MODIFY ;
 scalar_t__ TYPE_DIR ;
 scalar_t__ TYPE_FILE ;
 scalar_t__ TYPE_UNUSED ;
 int buf_lock (struct super_block*,int ) ;
 int buf_unlock (struct super_block*,int ) ;
 int down (int *) ;
 struct dentry_t* get_entry_in_dir (struct super_block*,struct chain_t*,int,int *) ;
 int get_uni_name_from_dos_entry (struct super_block*,struct dos_dentry_t*,struct uni_name_t*,int) ;
 int ilog2 (int) ;
 int memset (char*,int ,int) ;
 int nls_uniname_to_cstring (struct super_block*,char*,struct uni_name_t*) ;
 scalar_t__ stub1 (struct dentry_t*) ;
 int stub2 (struct dentry_t*) ;
 int stub3 (struct dentry_t*,struct timestamp_t*,int ) ;
 int stub4 (struct dentry_t*,struct timestamp_t*,int ) ;
 int stub5 (struct super_block*,struct chain_t*,int,int*) ;
 int stub6 (struct dentry_t*) ;
 int up (int *) ;

__attribute__((used)) static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
{
 int i, dentry, clu_offset;
 int ret = FFS_SUCCESS;
 s32 dentries_per_clu, dentries_per_clu_bits = 0;
 u32 type;
 sector_t sector;
 struct chain_t dir, clu;
 struct uni_name_t uni_name;
 struct timestamp_t tm;
 struct dentry_t *ep;
 struct super_block *sb = inode->i_sb;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 struct fs_func *fs_func = p_fs->fs_func;
 struct file_id_t *fid = &(EXFAT_I(inode)->fid);


 if (!dir_entry)
  return FFS_ERROR;


 if (fid->type != TYPE_DIR)
  return FFS_PERMISSIONERR;


 down(&p_fs->v_sem);

 if (fid->entry == -1) {
  dir.dir = p_fs->root_dir;
  dir.flags = 0x01;
 } else {
  dir.dir = fid->start_clu;
  dir.size = (s32)(fid->size >> p_fs->cluster_size_bits);
  dir.flags = fid->flags;
 }

 dentry = (s32)fid->rwoffset;

 if (dir.dir == CLUSTER_32(0)) {

  dentries_per_clu = p_fs->dentries_in_root;

  if (dentry == dentries_per_clu) {
   clu.dir = CLUSTER_32(~0);
  } else {
   clu.dir = dir.dir;
   clu.size = dir.size;
   clu.flags = dir.flags;
  }
 } else {
  dentries_per_clu = p_fs->dentries_per_clu;
  dentries_per_clu_bits = ilog2(dentries_per_clu);

  clu_offset = dentry >> dentries_per_clu_bits;
  clu.dir = dir.dir;
  clu.size = dir.size;
  clu.flags = dir.flags;

  if (clu.flags == 0x03) {
   clu.dir += clu_offset;
   clu.size -= clu_offset;
  } else {

   if ((clu_offset > 0) && (fid->hint_last_off > 0) &&
       (clu_offset >= fid->hint_last_off)) {
    clu_offset -= fid->hint_last_off;
    clu.dir = fid->hint_last_clu;
   }

   while (clu_offset > 0) {

    if (FAT_read(sb, clu.dir, &clu.dir) == -1) {
     ret = FFS_MEDIAERR;
     goto out;
    }
    clu_offset--;
   }
  }
 }

 while (clu.dir != CLUSTER_32(~0)) {
  if (p_fs->dev_ejected)
   break;

  if (dir.dir == CLUSTER_32(0))
   i = dentry % dentries_per_clu;
  else
   i = dentry & (dentries_per_clu - 1);

  for ( ; i < dentries_per_clu; i++, dentry++) {
   ep = get_entry_in_dir(sb, &clu, i, &sector);
   if (!ep) {
    ret = FFS_MEDIAERR;
    goto out;
   }
   type = fs_func->get_entry_type(ep);

   if (type == TYPE_UNUSED)
    break;

   if ((type != TYPE_FILE) && (type != TYPE_DIR))
    continue;

   buf_lock(sb, sector);
   dir_entry->Attr = fs_func->get_entry_attr(ep);

   fs_func->get_entry_time(ep, &tm, TM_CREATE);
   dir_entry->CreateTimestamp.Year = tm.year;
   dir_entry->CreateTimestamp.Month = tm.mon;
   dir_entry->CreateTimestamp.Day = tm.day;
   dir_entry->CreateTimestamp.Hour = tm.hour;
   dir_entry->CreateTimestamp.Minute = tm.min;
   dir_entry->CreateTimestamp.Second = tm.sec;
   dir_entry->CreateTimestamp.MilliSecond = 0;

   fs_func->get_entry_time(ep, &tm, TM_MODIFY);
   dir_entry->ModifyTimestamp.Year = tm.year;
   dir_entry->ModifyTimestamp.Month = tm.mon;
   dir_entry->ModifyTimestamp.Day = tm.day;
   dir_entry->ModifyTimestamp.Hour = tm.hour;
   dir_entry->ModifyTimestamp.Minute = tm.min;
   dir_entry->ModifyTimestamp.Second = tm.sec;
   dir_entry->ModifyTimestamp.MilliSecond = 0;

   memset((char *)&dir_entry->AccessTimestamp, 0,
          sizeof(struct date_time_t));

   *(uni_name.name) = 0x0;
   fs_func->get_uni_name_from_ext_entry(sb, &dir, dentry,
            uni_name.name);
   if (*uni_name.name == 0x0 && p_fs->vol_type != EXFAT)
    get_uni_name_from_dos_entry(sb,
      (struct dos_dentry_t *)ep,
      &uni_name, 0x1);
   nls_uniname_to_cstring(sb, dir_entry->Name, &uni_name);
   buf_unlock(sb, sector);

   if (p_fs->vol_type == EXFAT) {
    ep = get_entry_in_dir(sb, &clu, i + 1, ((void*)0));
    if (!ep) {
     ret = FFS_MEDIAERR;
     goto out;
    }
   } else {
    get_uni_name_from_dos_entry(sb,
      (struct dos_dentry_t *)ep,
      &uni_name, 0x0);
    nls_uniname_to_cstring(sb, dir_entry->ShortName,
             &uni_name);
   }

   dir_entry->Size = fs_func->get_entry_size(ep);


   if (dir.dir == CLUSTER_32(0)) {
   } else {
    fid->hint_last_off = dentry >>
       dentries_per_clu_bits;
    fid->hint_last_clu = clu.dir;
   }

   fid->rwoffset = (s64)(++dentry);

   if (p_fs->dev_ejected)
    ret = FFS_MEDIAERR;
   goto out;
  }

  if (dir.dir == CLUSTER_32(0))
   break;

  if (clu.flags == 0x03) {
   if ((--clu.size) > 0)
    clu.dir++;
   else
    clu.dir = CLUSTER_32(~0);
  } else {

   if (FAT_read(sb, clu.dir, &clu.dir) == -1) {
    ret = FFS_MEDIAERR;
    goto out;
   }
  }
 }

 *(dir_entry->Name) = '\0';

 fid->rwoffset = (s64)(++dentry);

 if (p_fs->dev_ejected)
  ret = FFS_MEDIAERR;

out:

 up(&p_fs->v_sem);

 return ret;
}
