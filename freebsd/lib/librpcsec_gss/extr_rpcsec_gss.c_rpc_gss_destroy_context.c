
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_3__ {scalar_t__ length; } ;
struct TYPE_4__ {TYPE_1__ gc_handle; int gc_proc; } ;
struct rpc_gss_data {scalar_t__ gd_state; scalar_t__ gd_ctx; TYPE_2__ gd_cred; int gd_clnt; } ;
typedef scalar_t__ bool_t ;
typedef int OM_uint32 ;
typedef int AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (int *) ;
 int AUTH_TIMEOUT ;
 scalar_t__ GSS_C_NO_CONTEXT ;
 int NULLPROC ;
 int RPCSEC_GSS_DESTROY ;
 scalar_t__ RPCSEC_GSS_ESTABLISHED ;
 scalar_t__ RPCSEC_GSS_START ;
 int clnt_call (int ,int ,int ,int *,int ,int *,int ) ;
 int gss_delete_sec_context (int *,scalar_t__*,int *) ;
 int log_debug (char*) ;
 int xdr_free (int ,char*) ;
 scalar_t__ xdr_gss_buffer_desc ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
rpc_gss_destroy_context(AUTH *auth, bool_t send_destroy)
{
 struct rpc_gss_data *gd;
 OM_uint32 min_stat;

 log_debug("in rpc_gss_destroy_context()");

 gd = AUTH_PRIVATE(auth);

 if (gd->gd_state == RPCSEC_GSS_ESTABLISHED && send_destroy) {
  gd->gd_cred.gc_proc = RPCSEC_GSS_DESTROY;
  clnt_call(gd->gd_clnt, NULLPROC,
      (xdrproc_t)xdr_void, ((void*)0),
      (xdrproc_t)xdr_void, ((void*)0), AUTH_TIMEOUT);
 }





 xdr_free((xdrproc_t) xdr_gss_buffer_desc,
     (char *) &gd->gd_cred.gc_handle);
 gd->gd_cred.gc_handle.length = 0;

 if (gd->gd_ctx != GSS_C_NO_CONTEXT)
  gss_delete_sec_context(&min_stat, &gd->gd_ctx, ((void*)0));

 gd->gd_state = RPCSEC_GSS_START;
}
