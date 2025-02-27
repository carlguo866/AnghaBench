
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct v9fs_session_info {int dummy; } ;
struct super_block {struct v9fs_session_info* s_fs_info; } ;
struct p9_wstat {int dummy; } ;
struct p9_qid {int dummy; } ;
struct inode {int i_state; unsigned long i_ino; } ;
typedef int dev_t ;


 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int I_NEW ;
 struct inode* iget5_locked (struct super_block*,unsigned long,int (*) (struct inode*,void*),int ,struct p9_wstat*) ;
 int iget_failed (struct inode*) ;
 int p9mode2unixmode (struct v9fs_session_info*,struct p9_wstat*,int *) ;
 int unlock_new_inode (struct inode*) ;
 int v9fs_cache_inode_get_cookie (struct inode*) ;
 int v9fs_init_inode (struct v9fs_session_info*,struct inode*,int ,int ) ;
 unsigned long v9fs_qid2ino (struct p9_qid*) ;
 int v9fs_set_inode ;
 int v9fs_stat2inode (struct p9_wstat*,struct inode*,struct super_block*,int ) ;
 int v9fs_test_inode (struct inode*,void*) ;
 int v9fs_test_new_inode (struct inode*,void*) ;

__attribute__((used)) static struct inode *v9fs_qid_iget(struct super_block *sb,
       struct p9_qid *qid,
       struct p9_wstat *st,
       int new)
{
 dev_t rdev;
 int retval;
 umode_t umode;
 unsigned long i_ino;
 struct inode *inode;
 struct v9fs_session_info *v9ses = sb->s_fs_info;
 int (*test)(struct inode *, void *);

 if (new)
  test = v9fs_test_new_inode;
 else
  test = v9fs_test_inode;

 i_ino = v9fs_qid2ino(qid);
 inode = iget5_locked(sb, i_ino, test, v9fs_set_inode, st);
 if (!inode)
  return ERR_PTR(-ENOMEM);
 if (!(inode->i_state & I_NEW))
  return inode;





 inode->i_ino = i_ino;
 umode = p9mode2unixmode(v9ses, st, &rdev);
 retval = v9fs_init_inode(v9ses, inode, umode, rdev);
 if (retval)
  goto error;

 v9fs_stat2inode(st, inode, sb, 0);
 v9fs_cache_inode_get_cookie(inode);
 unlock_new_inode(inode);
 return inode;
error:
 iget_failed(inode);
 return ERR_PTR(retval);

}
