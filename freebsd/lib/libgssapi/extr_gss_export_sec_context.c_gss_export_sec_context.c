
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int length; int elements; } ;
struct _gss_mech_switch {scalar_t__ (* gm_export_sec_context ) (scalar_t__*,int *,TYPE_3__*) ;TYPE_1__ gm_mech_oid; } ;
struct _gss_context {int gc_ctx; struct _gss_mech_switch* gc_mech; } ;
typedef scalar_t__ gss_ctx_id_t ;
typedef TYPE_2__* gss_buffer_t ;
struct TYPE_10__ {int length; int value; } ;
typedef TYPE_3__ gss_buffer_desc ;
struct TYPE_9__ {int length; unsigned char* value; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ ENOMEM ;
 scalar_t__ GSS_C_NO_CONTEXT ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int _gss_buffer_zero (TYPE_2__*) ;
 int _gss_mg_error (struct _gss_mech_switch*,scalar_t__,scalar_t__) ;
 int free (struct _gss_context*) ;
 int gss_release_buffer (scalar_t__*,TYPE_3__*) ;
 unsigned char* malloc (int) ;
 int memcpy (unsigned char*,int ,int) ;
 scalar_t__ stub1 (scalar_t__*,int *,TYPE_3__*) ;

OM_uint32
gss_export_sec_context(OM_uint32 *minor_status,
    gss_ctx_id_t *context_handle,
    gss_buffer_t interprocess_token)
{
 OM_uint32 major_status;
 struct _gss_context *ctx = (struct _gss_context *) *context_handle;
 struct _gss_mech_switch *m = ctx->gc_mech;
 gss_buffer_desc buf;

 _gss_buffer_zero(interprocess_token);

 major_status = m->gm_export_sec_context(minor_status,
     &ctx->gc_ctx, &buf);

 if (major_status == GSS_S_COMPLETE) {
  unsigned char *p;

  free(ctx);
  *context_handle = GSS_C_NO_CONTEXT;
  interprocess_token->length = buf.length
   + 2 + m->gm_mech_oid.length;
  interprocess_token->value = malloc(interprocess_token->length);
  if (!interprocess_token->value) {







   _gss_buffer_zero(interprocess_token);
   *minor_status = ENOMEM;
   return (GSS_S_FAILURE);
  }
  p = interprocess_token->value;
  p[0] = m->gm_mech_oid.length >> 8;
  p[1] = m->gm_mech_oid.length;
  memcpy(p + 2, m->gm_mech_oid.elements, m->gm_mech_oid.length);
  memcpy(p + 2 + m->gm_mech_oid.length, buf.value, buf.length);
  gss_release_buffer(minor_status, &buf);
 } else {
  _gss_mg_error(m, major_status, *minor_status);
 }

 return (major_status);
}
