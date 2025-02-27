
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_5__ {int ixpxd; } ;
struct tblock {TYPE_2__ u; int ino; int xflag; } ;
struct inode {scalar_t__ i_nlink; int i_mtime; int i_ctime; int * i_fop; int * i_op; int i_ino; int i_sb; } ;
struct TYPE_4__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef int ino_t ;
struct TYPE_6__ {int commit_mutex; int ixpxd; } ;


 int COMMIT_CREATE ;
 int COMMIT_MUTEX_CHILD ;
 int COMMIT_MUTEX_PARENT ;
 int CURRENT_TIME ;
 int EIO ;
 int EMLINK ;
 scalar_t__ IS_ERR (struct inode*) ;
 int JFS_CREATE ;
 TYPE_3__* JFS_IP (struct inode*) ;
 scalar_t__ JFS_LINK_MAX ;
 int PTR_ERR (struct inode*) ;
 int S_IFDIR ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dtInitRoot (int ,struct inode*,int ) ;
 int dtInsert (int ,struct inode*,struct component_name*,int *,struct btstack*) ;
 int dtSearch (struct inode*,struct component_name*,int *,struct btstack*,int ) ;
 int free_UCSname (struct component_name*) ;
 int free_ea_wmap (struct inode*) ;
 int get_UCSname (struct component_name*,struct dentry*) ;
 struct inode* ialloc (struct inode*,int) ;
 int inc_nlink (struct inode*) ;
 int iput (struct inode*) ;
 int jfs_dir_inode_operations ;
 int jfs_dir_operations ;
 int jfs_err (char*,...) ;
 int jfs_info (char*,...) ;
 int jfs_init_acl (int ,struct inode*,struct inode*) ;
 int jfs_init_security (int ,struct inode*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 struct tblock* tid_to_tblock (int ) ;
 int txAbort (int ,int) ;
 int txBegin (int ,int ) ;
 int txCommit (int ,int,struct inode**,int ) ;
 int txEnd (int ) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int jfs_mkdir(struct inode *dip, struct dentry *dentry, int mode)
{
 int rc = 0;
 tid_t tid;
 struct inode *ip = ((void*)0);
 ino_t ino;
 struct component_name dname;
 struct btstack btstack;
 struct inode *iplist[2];
 struct tblock *tblk;

 jfs_info("jfs_mkdir: dip:0x%p name:%s", dip, dentry->d_name.name);


 if (dip->i_nlink == JFS_LINK_MAX) {
  rc = -EMLINK;
  goto out1;
 }





 if ((rc = get_UCSname(&dname, dentry)))
  goto out1;






 ip = ialloc(dip, S_IFDIR | mode);
 if (IS_ERR(ip)) {
  rc = PTR_ERR(ip);
  goto out2;
 }

 tid = txBegin(dip->i_sb, 0);

 mutex_lock_nested(&JFS_IP(dip)->commit_mutex, COMMIT_MUTEX_PARENT);
 mutex_lock_nested(&JFS_IP(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

 rc = jfs_init_acl(tid, ip, dip);
 if (rc)
  goto out3;

 rc = jfs_init_security(tid, ip, dip);
 if (rc) {
  txAbort(tid, 0);
  goto out3;
 }

 if ((rc = dtSearch(dip, &dname, &ino, &btstack, JFS_CREATE))) {
  jfs_err("jfs_mkdir: dtSearch returned %d", rc);
  txAbort(tid, 0);
  goto out3;
 }

 tblk = tid_to_tblock(tid);
 tblk->xflag |= COMMIT_CREATE;
 tblk->ino = ip->i_ino;
 tblk->u.ixpxd = JFS_IP(ip)->ixpxd;

 iplist[0] = dip;
 iplist[1] = ip;




 dtInitRoot(tid, ip, dip->i_ino);





 ino = ip->i_ino;
 if ((rc = dtInsert(tid, dip, &dname, &ino, &btstack))) {
  if (rc == -EIO) {
   jfs_err("jfs_mkdir: dtInsert returned -EIO");
   txAbort(tid, 1);
  } else
   txAbort(tid, 0);
  goto out3;
 }

 ip->i_nlink = 2;
 ip->i_op = &jfs_dir_inode_operations;
 ip->i_fop = &jfs_dir_operations;

 mark_inode_dirty(ip);


 inc_nlink(dip);
 dip->i_ctime = dip->i_mtime = CURRENT_TIME;
 mark_inode_dirty(dip);

 rc = txCommit(tid, 2, &iplist[0], 0);

      out3:
 txEnd(tid);
 mutex_unlock(&JFS_IP(ip)->commit_mutex);
 mutex_unlock(&JFS_IP(dip)->commit_mutex);
 if (rc) {
  free_ea_wmap(ip);
  ip->i_nlink = 0;
  unlock_new_inode(ip);
  iput(ip);
 } else {
  d_instantiate(dentry, ip);
  unlock_new_inode(ip);
 }

      out2:
 free_UCSname(&dname);


      out1:

 jfs_info("jfs_mkdir: rc:%d", rc);
 return rc;
}
