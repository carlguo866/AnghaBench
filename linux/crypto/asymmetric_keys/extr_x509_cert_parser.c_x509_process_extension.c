
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x509_parse_context {scalar_t__ last_oid; unsigned char const* raw_akid; size_t raw_akid_size; TYPE_1__* cert; } ;
struct asymmetric_key_id {int data; int len; } ;
struct TYPE_2__ {size_t raw_skid_size; unsigned char const* raw_skid; struct asymmetric_key_id* skid; } ;


 unsigned char const ASN1_OTS ;
 int EBADMSG ;
 scalar_t__ IS_ERR (struct asymmetric_key_id*) ;
 scalar_t__ OID_authorityKeyIdentifier ;
 scalar_t__ OID_subjectKeyIdentifier ;
 int PTR_ERR (struct asymmetric_key_id*) ;
 struct asymmetric_key_id* asymmetric_key_generate_id (unsigned char const*,size_t,char*,int ) ;
 int pr_debug (char*,scalar_t__,...) ;

int x509_process_extension(void *context, size_t hdrlen,
      unsigned char tag,
      const void *value, size_t vlen)
{
 struct x509_parse_context *ctx = context;
 struct asymmetric_key_id *kid;
 const unsigned char *v = value;

 pr_debug("Extension: %u\n", ctx->last_oid);

 if (ctx->last_oid == OID_subjectKeyIdentifier) {

  if (ctx->cert->skid || vlen < 3)
   return -EBADMSG;
  if (v[0] != ASN1_OTS || v[1] != vlen - 2)
   return -EBADMSG;
  v += 2;
  vlen -= 2;

  ctx->cert->raw_skid_size = vlen;
  ctx->cert->raw_skid = v;
  kid = asymmetric_key_generate_id(v, vlen, "", 0);
  if (IS_ERR(kid))
   return PTR_ERR(kid);
  ctx->cert->skid = kid;
  pr_debug("subjkeyid %*phN\n", kid->len, kid->data);
  return 0;
 }

 if (ctx->last_oid == OID_authorityKeyIdentifier) {

  ctx->raw_akid = v;
  ctx->raw_akid_size = vlen;
  return 0;
 }

 return 0;
}
