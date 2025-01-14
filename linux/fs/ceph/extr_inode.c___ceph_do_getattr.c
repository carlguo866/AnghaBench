
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct page {int dummy; } ;
struct inode {int i_mode; int i_sb; } ;
struct TYPE_7__ {scalar_t__ inline_version; int inline_len; } ;
struct TYPE_8__ {TYPE_3__ targeti; } ;
struct TYPE_5__ {int mask; } ;
struct TYPE_6__ {TYPE_1__ getattr; } ;
struct ceph_mds_request {int r_num_caps; TYPE_4__ r_reply_info; struct page* r_locked_page; TYPE_2__ r_args; struct inode* r_inode; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;


 scalar_t__ CEPH_INLINE_NONE ;
 int CEPH_MDS_OP_GETATTR ;
 scalar_t__ CEPH_SNAPDIR ;
 int CEPH_STAT_RSTAT ;
 int EINVAL ;
 int ENODATA ;
 scalar_t__ IS_ERR (struct ceph_mds_request*) ;
 int PTR_ERR (struct ceph_mds_request*) ;
 int USE_ANY_MDS ;
 int USE_AUTH_MDS ;
 int ceph_cap_string (int) ;
 scalar_t__ ceph_caps_issued_mask (int ,int,int) ;
 int ceph_inode (struct inode*) ;
 struct ceph_mds_request* ceph_mdsc_create_request (struct ceph_mds_client*,int ,int) ;
 int ceph_mdsc_do_request (struct ceph_mds_client*,int *,struct ceph_mds_request*) ;
 int ceph_mdsc_put_request (struct ceph_mds_request*) ;
 struct ceph_fs_client* ceph_sb_to_client (int ) ;
 scalar_t__ ceph_snap (struct inode*) ;
 int cpu_to_le32 (int) ;
 int dout (char*,...) ;
 int ihold (struct inode*) ;

int __ceph_do_getattr(struct inode *inode, struct page *locked_page,
        int mask, bool force)
{
 struct ceph_fs_client *fsc = ceph_sb_to_client(inode->i_sb);
 struct ceph_mds_client *mdsc = fsc->mdsc;
 struct ceph_mds_request *req;
 int mode;
 int err;

 if (ceph_snap(inode) == CEPH_SNAPDIR) {
  dout("do_getattr inode %p SNAPDIR\n", inode);
  return 0;
 }

 dout("do_getattr inode %p mask %s mode 0%o\n",
      inode, ceph_cap_string(mask), inode->i_mode);
 if (!force && ceph_caps_issued_mask(ceph_inode(inode), mask, 1))
  return 0;

 mode = (mask & CEPH_STAT_RSTAT) ? USE_AUTH_MDS : USE_ANY_MDS;
 req = ceph_mdsc_create_request(mdsc, CEPH_MDS_OP_GETATTR, mode);
 if (IS_ERR(req))
  return PTR_ERR(req);
 req->r_inode = inode;
 ihold(inode);
 req->r_num_caps = 1;
 req->r_args.getattr.mask = cpu_to_le32(mask);
 req->r_locked_page = locked_page;
 err = ceph_mdsc_do_request(mdsc, ((void*)0), req);
 if (locked_page && err == 0) {
  u64 inline_version = req->r_reply_info.targeti.inline_version;
  if (inline_version == 0) {

   err = -EINVAL;
  } else if (inline_version == CEPH_INLINE_NONE) {
   err = -ENODATA;
  } else {
   err = req->r_reply_info.targeti.inline_len;
  }
 }
 ceph_mdsc_put_request(req);
 dout("do_getattr result=%d\n", err);
 return err;
}
