
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int len; struct kvec* head; } ;
struct rpc_rqst {TYPE_1__ rq_rcv_buf; } ;
struct nfs_readres {int count; scalar_t__ eof; int fattr; } ;
struct kvec {size_t iov_len; scalar_t__ iov_base; } ;
typedef int __be32 ;


 int dprintk (char*,...) ;
 int errno_NFSERR_IO ;
 int nfs_stat_to_errno (int) ;
 int ntohl (int ) ;
 int * xdr_decode_fattr (int *,int ) ;
 int xdr_shift_buf (TYPE_1__*,size_t) ;

__attribute__((used)) static int
nfs_xdr_readres(struct rpc_rqst *req, __be32 *p, struct nfs_readres *res)
{
 struct kvec *iov = req->rq_rcv_buf.head;
 size_t hdrlen;
 u32 count, recvd;
 int status;

 if ((status = ntohl(*p++)))
  return nfs_stat_to_errno(status);
 p = xdr_decode_fattr(p, res->fattr);

 count = ntohl(*p++);
 res->eof = 0;
 hdrlen = (u8 *) p - (u8 *) iov->iov_base;
 if (iov->iov_len < hdrlen) {
  dprintk("NFS: READ reply header overflowed:"
    "length %Zu > %Zu\n", hdrlen, iov->iov_len);
  return -errno_NFSERR_IO;
 } else if (iov->iov_len != hdrlen) {
  dprintk("NFS: READ header is short. iovec will be shifted.\n");
  xdr_shift_buf(&req->rq_rcv_buf, iov->iov_len - hdrlen);
 }

 recvd = req->rq_rcv_buf.len - hdrlen;
 if (count > recvd) {
  dprintk("NFS: server cheating in read reply: "
   "count %u > recvd %u\n", count, recvd);
  count = recvd;
 }

 dprintk("RPC:      readres OK count %u\n", count);
 res->count = count;

 return count;
}
