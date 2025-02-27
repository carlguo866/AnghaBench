
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct v9fs_session_info {scalar_t__ cache; } ;
struct v9fs_inode {int v_mutex; void* writeback_fid; } ;
struct posix_acl {int dummy; } ;
struct p9_qid {int dummy; } ;
struct TYPE_2__ {unsigned char* name; } ;
struct p9_fid {int i_sb; TYPE_1__ d_name; } ;
struct inode {int i_sb; TYPE_1__ d_name; } ;
struct file {int f_mode; struct p9_fid* private_data; } ;
struct dentry {int i_sb; TYPE_1__ d_name; } ;
typedef int kgid_t ;


 scalar_t__ CACHE_FSCACHE ;
 scalar_t__ CACHE_LOOSE ;
 int FMODE_CREATED ;
 scalar_t__ IS_ERR (struct p9_fid*) ;
 unsigned int O_ACCMODE ;
 unsigned int O_CREAT ;
 unsigned int O_RDONLY ;
 int P9_DEBUG_VFS ;
 int PTR_ERR (struct p9_fid*) ;
 struct v9fs_inode* V9FS_I (struct p9_fid*) ;
 struct p9_fid* clone_fid (struct p9_fid*) ;
 scalar_t__ d_in_lookup (struct p9_fid*) ;
 int d_instantiate (struct p9_fid*,struct p9_fid*) ;
 scalar_t__ d_really_is_positive (struct p9_fid*) ;
 int dput (struct p9_fid*) ;
 int finish_no_open (struct file*,struct p9_fid*) ;
 int finish_open (struct file*,struct p9_fid*,int ) ;
 int generic_file_open ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int p9_client_clunk (struct p9_fid*) ;
 int p9_client_create_dotl (struct p9_fid*,unsigned char const*,int ,int ,int ,struct p9_qid*) ;
 struct p9_fid* p9_client_walk (struct p9_fid*,int,unsigned char const**,int) ;
 int p9_debug (int ,char*,...) ;
 int v9fs_acl_mode (struct p9_fid*,int *,struct posix_acl**,struct posix_acl**) ;
 int v9fs_cache_inode_set_cookie (struct p9_fid*,struct file*) ;
 int v9fs_fid_add (struct p9_fid*,struct p9_fid*) ;
 int v9fs_get_fsgid_for_create (struct p9_fid*) ;
 struct p9_fid* v9fs_get_new_inode_from_fid (struct v9fs_session_info*,struct p9_fid*,int ) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct p9_fid*) ;
 int v9fs_invalidate_inode_attr (struct p9_fid*) ;
 int v9fs_open_to_dotl_flags (unsigned int) ;
 struct p9_fid* v9fs_parent_fid (struct p9_fid*) ;
 int v9fs_put_acl (struct posix_acl*,struct posix_acl*) ;
 int v9fs_set_create_acl (struct p9_fid*,struct p9_fid*,struct posix_acl*,struct posix_acl*) ;
 struct p9_fid* v9fs_vfs_lookup (struct p9_fid*,struct p9_fid*,int ) ;
 struct p9_fid* v9fs_writeback_fid (struct p9_fid*) ;

__attribute__((used)) static int
v9fs_vfs_atomic_open_dotl(struct inode *dir, struct dentry *dentry,
     struct file *file, unsigned flags, umode_t omode)
{
 int err = 0;
 kgid_t gid;
 umode_t mode;
 const unsigned char *name = ((void*)0);
 struct p9_qid qid;
 struct inode *inode;
 struct p9_fid *fid = ((void*)0);
 struct v9fs_inode *v9inode;
 struct p9_fid *dfid, *ofid, *inode_fid;
 struct v9fs_session_info *v9ses;
 struct posix_acl *pacl = ((void*)0), *dacl = ((void*)0);
 struct dentry *res = ((void*)0);

 if (d_in_lookup(dentry)) {
  res = v9fs_vfs_lookup(dir, dentry, 0);
  if (IS_ERR(res))
   return PTR_ERR(res);

  if (res)
   dentry = res;
 }


 if (!(flags & O_CREAT) || d_really_is_positive(dentry))
  return finish_no_open(file, res);

 v9ses = v9fs_inode2v9ses(dir);

 name = dentry->d_name.name;
 p9_debug(P9_DEBUG_VFS, "name:%s flags:0x%x mode:0x%hx\n",
   name, flags, omode);

 dfid = v9fs_parent_fid(dentry);
 if (IS_ERR(dfid)) {
  err = PTR_ERR(dfid);
  p9_debug(P9_DEBUG_VFS, "fid lookup failed %d\n", err);
  goto out;
 }


 ofid = clone_fid(dfid);
 if (IS_ERR(ofid)) {
  err = PTR_ERR(ofid);
  p9_debug(P9_DEBUG_VFS, "p9_client_walk failed %d\n", err);
  goto out;
 }

 gid = v9fs_get_fsgid_for_create(dir);

 mode = omode;

 err = v9fs_acl_mode(dir, &mode, &dacl, &pacl);
 if (err) {
  p9_debug(P9_DEBUG_VFS, "Failed to get acl values in creat %d\n",
    err);
  goto error;
 }
 err = p9_client_create_dotl(ofid, name, v9fs_open_to_dotl_flags(flags),
        mode, gid, &qid);
 if (err < 0) {
  p9_debug(P9_DEBUG_VFS, "p9_client_open_dotl failed in creat %d\n",
    err);
  goto error;
 }
 v9fs_invalidate_inode_attr(dir);


 fid = p9_client_walk(dfid, 1, &name, 1);
 if (IS_ERR(fid)) {
  err = PTR_ERR(fid);
  p9_debug(P9_DEBUG_VFS, "p9_client_walk failed %d\n", err);
  fid = ((void*)0);
  goto error;
 }
 inode = v9fs_get_new_inode_from_fid(v9ses, fid, dir->i_sb);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  p9_debug(P9_DEBUG_VFS, "inode creation failed %d\n", err);
  goto error;
 }

 v9fs_set_create_acl(inode, fid, dacl, pacl);

 v9fs_fid_add(dentry, fid);
 d_instantiate(dentry, inode);

 v9inode = V9FS_I(inode);
 mutex_lock(&v9inode->v_mutex);
 if ((v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) &&
     !v9inode->writeback_fid &&
     ((flags & O_ACCMODE) != O_RDONLY)) {







  inode_fid = v9fs_writeback_fid(dentry);
  if (IS_ERR(inode_fid)) {
   err = PTR_ERR(inode_fid);
   mutex_unlock(&v9inode->v_mutex);
   goto err_clunk_old_fid;
  }
  v9inode->writeback_fid = (void *) inode_fid;
 }
 mutex_unlock(&v9inode->v_mutex);

 err = finish_open(file, dentry, generic_file_open);
 if (err)
  goto err_clunk_old_fid;
 file->private_data = ofid;
 if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
  v9fs_cache_inode_set_cookie(inode, file);
 file->f_mode |= FMODE_CREATED;
out:
 v9fs_put_acl(dacl, pacl);
 dput(res);
 return err;

error:
 if (fid)
  p9_client_clunk(fid);
err_clunk_old_fid:
 if (ofid)
  p9_client_clunk(ofid);
 goto out;
}
