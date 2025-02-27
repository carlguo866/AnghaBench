
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct TYPE_2__ {scalar_t__ fl_type; } ;
struct nlm_lock {TYPE_1__ fl; } ;
struct nlm_args {int block; int cookie; struct nlm_lock lock; } ;


 scalar_t__ F_WRLCK ;
 int encode_bool (struct xdr_stream*,int) ;
 int encode_cookie (struct xdr_stream*,int *) ;
 int encode_nlm_lock (struct xdr_stream*,struct nlm_lock const*) ;

__attribute__((used)) static void nlm_xdr_enc_cancargs(struct rpc_rqst *req,
     struct xdr_stream *xdr,
     const void *data)
{
 const struct nlm_args *args = data;
 const struct nlm_lock *lock = &args->lock;

 encode_cookie(xdr, &args->cookie);
 encode_bool(xdr, args->block);
 encode_bool(xdr, lock->fl.fl_type == F_WRLCK);
 encode_nlm_lock(xdr, lock);
}
