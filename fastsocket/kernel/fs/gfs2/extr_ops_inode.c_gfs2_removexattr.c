
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 int LM_ST_EXCLUSIVE ;
 int generic_removexattr (struct dentry*,char const*) ;
 int gfs2_glock_dq (struct gfs2_holder*) ;
 int gfs2_glock_nq (struct gfs2_holder*) ;
 int gfs2_holder_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_holder_uninit (struct gfs2_holder*) ;
 int gfs2_rs_alloc (struct gfs2_inode*) ;

__attribute__((used)) static int gfs2_removexattr(struct dentry *dentry, const char *name)
{
 struct inode *inode = dentry->d_inode;
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_holder gh;
 int ret;

 gfs2_holder_init(ip->i_gl, LM_ST_EXCLUSIVE, 0, &gh);
 ret = gfs2_glock_nq(&gh);
 if (ret == 0) {
  ret = gfs2_rs_alloc(ip);
  if (ret == 0)
   ret = generic_removexattr(dentry, name);
  gfs2_glock_dq(&gh);
 }
 gfs2_holder_uninit(&gh);
 return ret;
}
