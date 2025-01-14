
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_vers; } ;
struct svc_fh {int dummy; } ;
struct readdir_cd {int dummy; } ;
struct file {int dummy; } ;
typedef scalar_t__ loff_t ;
typedef int filldir_t ;
typedef scalar_t__ __be32 ;


 int NFSD_MAY_64BIT_COOKIE ;
 int NFSD_MAY_READ ;
 int S_IFDIR ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd_buffered_readdir (struct file*,int ,struct readdir_cd*,scalar_t__*) ;
 int nfsd_close (struct file*) ;
 scalar_t__ nfsd_open (struct svc_rqst*,struct svc_fh*,int ,int,struct file**) ;
 scalar_t__ nfserr_eof ;
 scalar_t__ nfserr_toosmall ;
 scalar_t__ nfserrno (int) ;
 scalar_t__ vfs_llseek (struct file*,scalar_t__,int ) ;

__be32
nfsd_readdir(struct svc_rqst *rqstp, struct svc_fh *fhp, loff_t *offsetp,
      struct readdir_cd *cdp, filldir_t func)
{
 __be32 err;
 struct file *file;
 loff_t offset = *offsetp;
 int may_flags = NFSD_MAY_READ;


 if (rqstp->rq_vers > 2)
  may_flags |= NFSD_MAY_64BIT_COOKIE;

 err = nfsd_open(rqstp, fhp, S_IFDIR, may_flags, &file);
 if (err)
  goto out;

 offset = vfs_llseek(file, offset, 0);
 if (offset < 0) {
  err = nfserrno((int)offset);
  goto out_close;
 }

 err = nfsd_buffered_readdir(file, func, cdp, offsetp);

 if (err == nfserr_eof || err == nfserr_toosmall)
  err = nfs_ok;
out_close:
 nfsd_close(file);
out:
 return err;
}
