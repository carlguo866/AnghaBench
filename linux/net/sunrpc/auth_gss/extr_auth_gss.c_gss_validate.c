
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct xdr_netobj {scalar_t__ len; int * data; } ;
struct xdr_buf {int dummy; } ;
struct rpc_task {TYPE_1__* tk_rqstp; } ;
struct rpc_cred {TYPE_2__* cr_auth; int cr_flags; } ;
struct kvec {int iov_len; int * iov_base; } ;
struct gss_cl_ctx {int gc_gss_ctx; } ;
typedef int __be32 ;
struct TYPE_4__ {scalar_t__ au_verfsize; } ;
struct TYPE_3__ {int rq_seqno; struct rpc_cred* rq_cred; } ;


 int EACCES ;
 int EIO ;
 int GFP_NOFS ;
 scalar_t__ GSS_S_CONTEXT_EXPIRED ;
 int RPCAUTH_CRED_UPTODATE ;
 scalar_t__ RPC_MAX_AUTH_SIZE ;
 scalar_t__ XDR_QUADLEN (scalar_t__) ;
 scalar_t__ be32_to_cpup (int *) ;
 int clear_bit (int ,int *) ;
 int cpu_to_be32 (int ) ;
 struct gss_cl_ctx* gss_cred_get_ctx (struct rpc_cred*) ;
 int gss_put_ctx (struct gss_cl_ctx*) ;
 scalar_t__ gss_verify_mic (int ,struct xdr_buf*,struct xdr_netobj*) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 scalar_t__ rpc_auth_gss ;
 int trace_rpcgss_verify_mic (struct rpc_task*,scalar_t__) ;
 int xdr_buf_from_iov (struct kvec*,struct xdr_buf*) ;
 int * xdr_inline_decode (struct xdr_stream*,scalar_t__) ;

__attribute__((used)) static int
gss_validate(struct rpc_task *task, struct xdr_stream *xdr)
{
 struct rpc_cred *cred = task->tk_rqstp->rq_cred;
 struct gss_cl_ctx *ctx = gss_cred_get_ctx(cred);
 __be32 *p, *seq = ((void*)0);
 struct kvec iov;
 struct xdr_buf verf_buf;
 struct xdr_netobj mic;
 u32 len, maj_stat;
 int status;

 p = xdr_inline_decode(xdr, 2 * sizeof(*p));
 if (!p)
  goto validate_failed;
 if (*p++ != rpc_auth_gss)
  goto validate_failed;
 len = be32_to_cpup(p);
 if (len > RPC_MAX_AUTH_SIZE)
  goto validate_failed;
 p = xdr_inline_decode(xdr, len);
 if (!p)
  goto validate_failed;

 seq = kmalloc(4, GFP_NOFS);
 if (!seq)
  goto validate_failed;
 *seq = cpu_to_be32(task->tk_rqstp->rq_seqno);
 iov.iov_base = seq;
 iov.iov_len = 4;
 xdr_buf_from_iov(&iov, &verf_buf);
 mic.data = (u8 *)p;
 mic.len = len;
 maj_stat = gss_verify_mic(ctx->gc_gss_ctx, &verf_buf, &mic);
 if (maj_stat == GSS_S_CONTEXT_EXPIRED)
  clear_bit(RPCAUTH_CRED_UPTODATE, &cred->cr_flags);
 if (maj_stat)
  goto bad_mic;



 cred->cr_auth->au_verfsize = XDR_QUADLEN(len) + 2;
 status = 0;
out:
 gss_put_ctx(ctx);
 kfree(seq);
 return status;

validate_failed:
 status = -EIO;
 goto out;
bad_mic:
 trace_rpcgss_verify_mic(task, maj_stat);
 status = -EACCES;
 goto out;
}
