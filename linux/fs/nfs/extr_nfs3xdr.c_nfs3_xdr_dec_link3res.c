
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs3_linkres {int dir_attr; int fattr; } ;
typedef enum nfs_stat { ____Placeholder_nfs_stat } nfs_stat ;


 int NFS3_OK ;
 int decode_nfsstat3 (struct xdr_stream*,int*) ;
 int decode_post_op_attr (struct xdr_stream*,int ,struct user_namespace*) ;
 int decode_wcc_data (struct xdr_stream*,int ,struct user_namespace*) ;
 int nfs3_stat_to_errno (int) ;
 struct user_namespace* rpc_rqst_userns (struct rpc_rqst*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nfs3_xdr_dec_link3res(struct rpc_rqst *req, struct xdr_stream *xdr,
     void *data)
{
 struct user_namespace *userns = rpc_rqst_userns(req);
 struct nfs3_linkres *result = data;
 enum nfs_stat status;
 int error;

 error = decode_nfsstat3(xdr, &status);
 if (unlikely(error))
  goto out;
 error = decode_post_op_attr(xdr, result->fattr, userns);
 if (unlikely(error))
  goto out;
 error = decode_wcc_data(xdr, result->dir_attr, userns);
 if (unlikely(error))
  goto out;
 if (status != NFS3_OK)
  goto out_status;
out:
 return error;
out_status:
 return nfs3_stat_to_errno(status);
}
