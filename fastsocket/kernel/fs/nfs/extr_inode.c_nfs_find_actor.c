
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_find_desc {struct nfs_fattr* fattr; struct nfs_fh* fh; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {scalar_t__ fileid; int mode; } ;
struct inode {int i_mode; } ;


 int NFS_FH (struct inode*) ;
 scalar_t__ NFS_FILEID (struct inode*) ;
 scalar_t__ NFS_STALE (struct inode*) ;
 int S_IFMT ;
 scalar_t__ is_bad_inode (struct inode*) ;
 scalar_t__ nfs_compare_fh (int ,struct nfs_fh*) ;

__attribute__((used)) static int
nfs_find_actor(struct inode *inode, void *opaque)
{
 struct nfs_find_desc *desc = (struct nfs_find_desc *)opaque;
 struct nfs_fh *fh = desc->fh;
 struct nfs_fattr *fattr = desc->fattr;

 if (NFS_FILEID(inode) != fattr->fileid)
  return 0;
 if ((S_IFMT & inode->i_mode) != (S_IFMT & fattr->mode))
  return 0;
 if (nfs_compare_fh(NFS_FH(inode), fh))
  return 0;
 if (is_bad_inode(inode) || NFS_STALE(inode))
  return 0;
 return 1;
}
