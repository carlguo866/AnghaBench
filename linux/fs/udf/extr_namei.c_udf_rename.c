
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ i_data; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; int i_location; scalar_t__ i_efe; TYPE_1__ i_ext; } ;
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {scalar_t__ i_ino; void* i_mtime; void* i_ctime; TYPE_2__* i_sb; int i_mode; } ;
struct TYPE_7__ {int extLocation; } ;
struct fileIdentDesc {TYPE_3__ icb; int fileCharacteristics; int fileVersionNum; } ;
struct fileEntry {int dummy; } ;
struct extendedFileEntry {int dummy; } ;
struct dentry {int d_name; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_6__ {int s_blocksize; } ;


 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int ENOTEMPTY ;
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ;
 scalar_t__ IS_ERR (struct fileIdentDesc*) ;
 int PTR_ERR (struct fileIdentDesc*) ;
 unsigned int RENAME_NOREPLACE ;
 scalar_t__ S_ISDIR (int ) ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_lelb (int ) ;
 void* current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int empty_dir (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 struct kernel_lb_addr lelb_to_cpu (int ) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 struct fileIdentDesc* udf_add_entry (struct inode*,struct dentry*,struct udf_fileident_bh*,struct fileIdentDesc*,int*) ;
 struct buffer_head* udf_bread (struct inode*,int ,int ,int*) ;
 int udf_delete_entry (struct inode*,struct fileIdentDesc*,struct udf_fileident_bh*,struct fileIdentDesc*) ;
 int udf_dir_entry_len (struct fileIdentDesc*) ;
 int udf_ext0_offset (struct inode*) ;
 struct fileIdentDesc* udf_find_entry (struct inode*,int *,struct udf_fileident_bh*,struct fileIdentDesc*) ;
 struct fileIdentDesc* udf_get_fileident (scalar_t__,int ,int*) ;
 scalar_t__ udf_get_lb_pblock (TYPE_2__*,struct kernel_lb_addr*,int ) ;
 int udf_update_tag (char*,int ) ;
 int udf_write_fi (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int *,int *) ;

__attribute__((used)) static int udf_rename(struct inode *old_dir, struct dentry *old_dentry,
        struct inode *new_dir, struct dentry *new_dentry,
        unsigned int flags)
{
 struct inode *old_inode = d_inode(old_dentry);
 struct inode *new_inode = d_inode(new_dentry);
 struct udf_fileident_bh ofibh, nfibh;
 struct fileIdentDesc *ofi = ((void*)0), *nfi = ((void*)0), *dir_fi = ((void*)0);
 struct fileIdentDesc ocfi, ncfi;
 struct buffer_head *dir_bh = ((void*)0);
 int retval = -ENOENT;
 struct kernel_lb_addr tloc;
 struct udf_inode_info *old_iinfo = UDF_I(old_inode);

 if (flags & ~RENAME_NOREPLACE)
  return -EINVAL;

 ofi = udf_find_entry(old_dir, &old_dentry->d_name, &ofibh, &ocfi);
 if (IS_ERR(ofi)) {
  retval = PTR_ERR(ofi);
  goto end_rename;
 }

 if (ofibh.sbh != ofibh.ebh)
  brelse(ofibh.ebh);

 brelse(ofibh.sbh);
 tloc = lelb_to_cpu(ocfi.icb.extLocation);
 if (!ofi || udf_get_lb_pblock(old_dir->i_sb, &tloc, 0)
     != old_inode->i_ino)
  goto end_rename;

 nfi = udf_find_entry(new_dir, &new_dentry->d_name, &nfibh, &ncfi);
 if (IS_ERR(nfi)) {
  retval = PTR_ERR(nfi);
  goto end_rename;
 }
 if (nfi && !new_inode) {
  if (nfibh.sbh != nfibh.ebh)
   brelse(nfibh.ebh);
  brelse(nfibh.sbh);
  nfi = ((void*)0);
 }
 if (S_ISDIR(old_inode->i_mode)) {
  int offset = udf_ext0_offset(old_inode);

  if (new_inode) {
   retval = -ENOTEMPTY;
   if (!empty_dir(new_inode))
    goto end_rename;
  }
  retval = -EIO;
  if (old_iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
   dir_fi = udf_get_fileident(
     old_iinfo->i_ext.i_data -
       (old_iinfo->i_efe ?
        sizeof(struct extendedFileEntry) :
        sizeof(struct fileEntry)),
     old_inode->i_sb->s_blocksize, &offset);
  } else {
   dir_bh = udf_bread(old_inode, 0, 0, &retval);
   if (!dir_bh)
    goto end_rename;
   dir_fi = udf_get_fileident(dir_bh->b_data,
     old_inode->i_sb->s_blocksize, &offset);
  }
  if (!dir_fi)
   goto end_rename;
  tloc = lelb_to_cpu(dir_fi->icb.extLocation);
  if (udf_get_lb_pblock(old_inode->i_sb, &tloc, 0) !=
    old_dir->i_ino)
   goto end_rename;
 }
 if (!nfi) {
  nfi = udf_add_entry(new_dir, new_dentry, &nfibh, &ncfi,
        &retval);
  if (!nfi)
   goto end_rename;
 }





 old_inode->i_ctime = current_time(old_inode);
 mark_inode_dirty(old_inode);




 ncfi.fileVersionNum = ocfi.fileVersionNum;
 ncfi.fileCharacteristics = ocfi.fileCharacteristics;
 memcpy(&(ncfi.icb), &(ocfi.icb), sizeof(ocfi.icb));
 udf_write_fi(new_dir, &ncfi, nfi, &nfibh, ((void*)0), ((void*)0));


 ofi = udf_find_entry(old_dir, &old_dentry->d_name, &ofibh, &ocfi);
 udf_delete_entry(old_dir, ofi, &ofibh, &ocfi);

 if (new_inode) {
  new_inode->i_ctime = current_time(new_inode);
  inode_dec_link_count(new_inode);
 }
 old_dir->i_ctime = old_dir->i_mtime = current_time(old_dir);
 new_dir->i_ctime = new_dir->i_mtime = current_time(new_dir);
 mark_inode_dirty(old_dir);
 mark_inode_dirty(new_dir);

 if (dir_fi) {
  dir_fi->icb.extLocation = cpu_to_lelb(UDF_I(new_dir)->i_location);
  udf_update_tag((char *)dir_fi, udf_dir_entry_len(dir_fi));
  if (old_iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
   mark_inode_dirty(old_inode);
  else
   mark_buffer_dirty_inode(dir_bh, old_inode);

  inode_dec_link_count(old_dir);
  if (new_inode)
   inode_dec_link_count(new_inode);
  else {
   inc_nlink(new_dir);
   mark_inode_dirty(new_dir);
  }
 }

 if (ofi) {
  if (ofibh.sbh != ofibh.ebh)
   brelse(ofibh.ebh);
  brelse(ofibh.sbh);
 }

 retval = 0;

end_rename:
 brelse(dir_bh);
 if (nfi) {
  if (nfibh.sbh != nfibh.ebh)
   brelse(nfibh.ebh);
  brelse(nfibh.sbh);
 }

 return retval;
}
