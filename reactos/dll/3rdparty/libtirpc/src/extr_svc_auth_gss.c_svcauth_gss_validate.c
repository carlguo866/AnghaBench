
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct svc_rpc_gss_data {int ctx; } ;
struct TYPE_6__ {int oa_length; int * oa_base; } ;
struct opaque_auth {scalar_t__ oa_length; int oa_base; int oa_flavor; } ;
struct TYPE_7__ {scalar_t__ cb_rpcvers; scalar_t__ cb_prog; scalar_t__ cb_vers; scalar_t__ cb_proc; TYPE_1__ cb_verf; struct opaque_auth cb_cred; } ;
struct rpc_msg {scalar_t__ rm_xid; TYPE_2__ rm_call; int rm_direction; } ;
typedef int rpchdr ;
typedef int int32_t ;
struct TYPE_8__ {int length; int * value; } ;
typedef TYPE_3__ gss_buffer_desc ;
typedef int caddr_t ;
typedef int bool_t ;
typedef scalar_t__ OM_uint32 ;


 int BYTES_PER_XDR_UNIT ;
 int FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 int IXDR_PUT_ENUM (int *,int ) ;
 int IXDR_PUT_LONG (int *,scalar_t__) ;
 scalar_t__ MAX_AUTH_BYTES ;
 int RNDUP (scalar_t__) ;
 int TRUE ;
 scalar_t__ gss_verify_mic (scalar_t__*,int ,TYPE_3__*,TYPE_3__*,scalar_t__*) ;
 int log_debug (char*) ;
 int log_status (char*,scalar_t__,scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static bool_t
svcauth_gss_validate(struct svc_rpc_gss_data *gd, struct rpc_msg *msg)
{
 struct opaque_auth *oa;
 gss_buffer_desc rpcbuf, checksum;
 OM_uint32 maj_stat, min_stat, qop_state;
 u_char rpchdr[128];
 int32_t *buf;

 log_debug("in svcauth_gss_validate()");

 memset(rpchdr, 0, sizeof(rpchdr));


 oa = &msg->rm_call.cb_cred;
 if (oa->oa_length > MAX_AUTH_BYTES)
  return (FALSE);


 if (sizeof(rpchdr) < (8 * BYTES_PER_XDR_UNIT +
   RNDUP(oa->oa_length)))
  return (FALSE);

 buf = (int32_t *)rpchdr;
 IXDR_PUT_LONG(buf, msg->rm_xid);
 IXDR_PUT_ENUM(buf, msg->rm_direction);
 IXDR_PUT_LONG(buf, msg->rm_call.cb_rpcvers);
 IXDR_PUT_LONG(buf, msg->rm_call.cb_prog);
 IXDR_PUT_LONG(buf, msg->rm_call.cb_vers);
 IXDR_PUT_LONG(buf, msg->rm_call.cb_proc);
 IXDR_PUT_ENUM(buf, oa->oa_flavor);
 IXDR_PUT_LONG(buf, oa->oa_length);
 if (oa->oa_length) {
  memcpy((caddr_t)buf, oa->oa_base, oa->oa_length);
  buf += RNDUP(oa->oa_length) / sizeof(int32_t);
 }
 rpcbuf.value = rpchdr;
 rpcbuf.length = (u_char *)buf - rpchdr;

 checksum.value = msg->rm_call.cb_verf.oa_base;
 checksum.length = msg->rm_call.cb_verf.oa_length;

 maj_stat = gss_verify_mic(&min_stat, gd->ctx, &rpcbuf, &checksum,
      &qop_state);

 if (maj_stat != GSS_S_COMPLETE) {
  log_status("gss_verify_mic", maj_stat, min_stat);
  return (FALSE);
 }
 return (TRUE);
}
