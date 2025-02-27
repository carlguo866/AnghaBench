
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_gid; int i_uid; } ;
struct iattr {int ia_valid; int ia_gid; int ia_uid; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_inode; } ;
struct gfs2_alloc_parms {scalar_t__ target; } ;
typedef scalar_t__ s64 ;
typedef int kuid_t ;
typedef int kgid_t ;


 int ATTR_GID ;
 int ATTR_UID ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int NO_GID_QUOTA_CHANGE ;
 int NO_UID_QUOTA_CHANGE ;
 scalar_t__ RES_DINODE ;
 int RES_QUOTA ;
 scalar_t__ gfs2_get_inode_blocks (int *) ;
 int gfs2_quota_change (struct gfs2_inode*,scalar_t__,int ,int ) ;
 int gfs2_quota_check (struct gfs2_inode*,int ,int ,struct gfs2_alloc_parms*) ;
 int gfs2_quota_lock (struct gfs2_inode*,int ,int ) ;
 int gfs2_quota_unlock (struct gfs2_inode*) ;
 int gfs2_rindex_update (struct gfs2_sbd*) ;
 int gfs2_rsqa_alloc (struct gfs2_inode*) ;
 int gfs2_setattr_simple (struct inode*,struct iattr*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,scalar_t__,int ) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 scalar_t__ gid_eq (int ,int ) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static int setattr_chown(struct inode *inode, struct iattr *attr)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 kuid_t ouid, nuid;
 kgid_t ogid, ngid;
 int error;
 struct gfs2_alloc_parms ap;

 ouid = inode->i_uid;
 ogid = inode->i_gid;
 nuid = attr->ia_uid;
 ngid = attr->ia_gid;

 if (!(attr->ia_valid & ATTR_UID) || uid_eq(ouid, nuid))
  ouid = nuid = NO_UID_QUOTA_CHANGE;
 if (!(attr->ia_valid & ATTR_GID) || gid_eq(ogid, ngid))
  ogid = ngid = NO_GID_QUOTA_CHANGE;

 error = gfs2_rsqa_alloc(ip);
 if (error)
  goto out;

 error = gfs2_rindex_update(sdp);
 if (error)
  goto out;

 error = gfs2_quota_lock(ip, nuid, ngid);
 if (error)
  goto out;

 ap.target = gfs2_get_inode_blocks(&ip->i_inode);

 if (!uid_eq(ouid, NO_UID_QUOTA_CHANGE) ||
     !gid_eq(ogid, NO_GID_QUOTA_CHANGE)) {
  error = gfs2_quota_check(ip, nuid, ngid, &ap);
  if (error)
   goto out_gunlock_q;
 }

 error = gfs2_trans_begin(sdp, RES_DINODE + 2 * RES_QUOTA, 0);
 if (error)
  goto out_gunlock_q;

 error = gfs2_setattr_simple(inode, attr);
 if (error)
  goto out_end_trans;

 if (!uid_eq(ouid, NO_UID_QUOTA_CHANGE) ||
     !gid_eq(ogid, NO_GID_QUOTA_CHANGE)) {
  gfs2_quota_change(ip, -(s64)ap.target, ouid, ogid);
  gfs2_quota_change(ip, ap.target, nuid, ngid);
 }

out_end_trans:
 gfs2_trans_end(sdp);
out_gunlock_q:
 gfs2_quota_unlock(ip);
out:
 return error;
}
