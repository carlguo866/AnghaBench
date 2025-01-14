
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_20__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_11__ ;


typedef int uint32_t ;
struct TYPE_32__ {char* key_name; int flags; int dn_len; int dn; } ;
typedef TYPE_2__ test_trust_anchor ;
struct TYPE_33__ {char* name; unsigned int hashes; char** ta_names; char* ee_key_name; unsigned int key_type_usage; unsigned int status; int servername; int seconds; int days; scalar_t__* cert_names; } ;
typedef TYPE_3__ test_case ;
struct TYPE_35__ {unsigned int key_type; } ;
struct TYPE_30__ {int len; int data; } ;
struct TYPE_34__ {size_t len; struct TYPE_34__* data; TYPE_5__ pkey; int flags; TYPE_1__ dn; } ;
typedef TYPE_4__ br_x509_trust_anchor ;
typedef TYPE_5__ br_x509_pkey ;
struct TYPE_36__ {int* dp_stack; int* rp_stack; TYPE_11__* vtable; } ;
typedef TYPE_6__ br_x509_minimal_context ;
typedef int br_hash_class ;
typedef TYPE_4__ blob ;
struct TYPE_31__ {int id; int * impl; } ;
struct TYPE_29__ {unsigned int (* end_chain ) (TYPE_11__**) ;TYPE_5__* (* get_pkey ) (TYPE_11__**,unsigned int*) ;int (* end_cert ) (TYPE_11__**) ;int (* append ) (TYPE_11__**,TYPE_4__*,size_t) ;int (* start_cert ) (TYPE_11__**,size_t) ;int (* start_chain ) (TYPE_11__**,int ) ;} ;


 unsigned int BR_ERR_X509_NOT_TRUSTED ;
 int EXIT_FAILURE ;
 void* HT_get (int ,char*) ;
 int br_ec_get_default () ;
 int br_ecdsa_vrfy_asn1_get_default () ;
 int br_rsa_pkcs1_vrfy_get_default () ;
 int br_sha1_vtable ;
 int br_x509_minimal_init (TYPE_6__*,int const*,TYPE_4__*,size_t) ;
 int br_x509_minimal_set_ecdsa (TYPE_6__*,int ,int ) ;
 int br_x509_minimal_set_hash (TYPE_6__*,int,int *) ;
 int br_x509_minimal_set_rsa (TYPE_6__*,int ) ;
 int br_x509_minimal_set_time (TYPE_6__*,int ,int ) ;
 int eqpkey (TYPE_5__ const*,TYPE_5__*) ;
 int exit (int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 TYPE_20__* hash_impls ;
 int keys ;
 size_t max_dp_usage ;
 size_t max_rp_usage ;
 int printf (char*,...) ;
 TYPE_4__* read_file (scalar_t__,size_t*) ;
 int stderr ;
 int stdout ;
 int stub1 (TYPE_11__**,int ) ;
 int stub2 (TYPE_11__**,size_t) ;
 int stub3 (TYPE_11__**,TYPE_4__*,size_t) ;
 int stub4 (TYPE_11__**) ;
 unsigned int stub5 (TYPE_11__**) ;
 TYPE_5__* stub6 (TYPE_11__**,unsigned int*) ;
 int trust_anchors ;
 int xfree (TYPE_4__*) ;
 TYPE_4__* xmalloc (size_t) ;

__attribute__((used)) static void
run_test_case(test_case *tc)
{
 br_x509_minimal_context ctx;
 br_x509_trust_anchor *anchors;
 size_t num_anchors;
 size_t u;
 const br_hash_class *dnhash;
 size_t num_certs;
 blob *certs;
 br_x509_pkey *ee_pkey_ref;
 const br_x509_pkey *ee_pkey;
 unsigned usages;
 unsigned status;

 printf("%s: ", tc->name);
 fflush(stdout);







 dnhash = &br_sha1_vtable;
 for (u = 0; hash_impls[u].id; u ++) {
  if ((tc->hashes & ((unsigned)1 << (hash_impls[u].id))) != 0) {
   dnhash = hash_impls[u].impl;
  }
 }




 for (num_anchors = 0; tc->ta_names[num_anchors]; num_anchors ++);
 anchors = xmalloc(num_anchors * sizeof *anchors);
 for (u = 0; tc->ta_names[u]; u ++) {
  test_trust_anchor *tta;
  br_x509_pkey *tak;

  tta = HT_get(trust_anchors, tc->ta_names[u]);
  if (tta == ((void*)0)) {
   fprintf(stderr, "no such trust anchor: '%s'\n",
    tc->ta_names[u]);
   exit(EXIT_FAILURE);
  }
  tak = HT_get(keys, tta->key_name);
  if (tak == ((void*)0)) {
   fprintf(stderr, "no such public key: '%s'\n",
    tta->key_name);
   exit(EXIT_FAILURE);
  }
  anchors[u].dn.data = tta->dn;
  anchors[u].dn.len = tta->dn_len;
  anchors[u].flags = tta->flags;
  anchors[u].pkey = *tak;
 }




 for (num_certs = 0; tc->cert_names[num_certs]; num_certs ++);
 certs = xmalloc(num_certs * sizeof *certs);
 for (u = 0; u < num_certs; u ++) {
  certs[u].data = read_file(tc->cert_names[u], &certs[u].len);
 }




 if (tc->ee_key_name == ((void*)0)) {
  ee_pkey_ref = ((void*)0);
 } else {
  ee_pkey_ref = HT_get(keys, tc->ee_key_name);
  if (ee_pkey_ref == ((void*)0)) {
   fprintf(stderr, "no such public key: '%s'\n",
    tc->ee_key_name);
   exit(EXIT_FAILURE);
  }
 }




 br_x509_minimal_init(&ctx, dnhash, anchors, num_anchors);
 for (u = 0; hash_impls[u].id; u ++) {
  int id;

  id = hash_impls[u].id;
  if ((tc->hashes & ((unsigned)1 << id)) != 0) {
   br_x509_minimal_set_hash(&ctx, id, hash_impls[u].impl);
  }
 }
 br_x509_minimal_set_rsa(&ctx, br_rsa_pkcs1_vrfy_get_default());
 br_x509_minimal_set_ecdsa(&ctx,
  br_ec_get_default(), br_ecdsa_vrfy_asn1_get_default());




 br_x509_minimal_set_time(&ctx, tc->days, tc->seconds);




 for (u = 0; u < (sizeof ctx.dp_stack) / sizeof(uint32_t); u ++) {
  ctx.dp_stack[u] = 0xA7C083FE;
 }
 for (u = 0; u < (sizeof ctx.rp_stack) / sizeof(uint32_t); u ++) {
  ctx.rp_stack[u] = 0xA7C083FE;
 }





 ctx.vtable->start_chain(&ctx.vtable, tc->servername);
 for (u = 0; u < num_certs; u ++) {
  size_t v;

  ctx.vtable->start_cert(&ctx.vtable, certs[u].len);
  v = 0;
  while (v < certs[u].len) {
   size_t w;

   w = certs[u].len - v;
   if (w > 100) {
    w = 100;
   }
   ctx.vtable->append(&ctx.vtable, certs[u].data + v, w);
   v += w;
  }
  ctx.vtable->end_cert(&ctx.vtable);
 }
 status = ctx.vtable->end_chain(&ctx.vtable);
 ee_pkey = ctx.vtable->get_pkey(&ctx.vtable, &usages);




 if (ee_pkey != ((void*)0)) {
  unsigned ktu;

  ktu = ee_pkey->key_type | usages;
  if (tc->key_type_usage != (ktu & tc->key_type_usage)) {
   fprintf(stderr, "wrong key type + usage"
    " (expected 0x%02X, got 0x%02X)\n",
    tc->key_type_usage, ktu);
   exit(EXIT_FAILURE);
  }
 }





 if (status != tc->status) {
  fprintf(stderr, "wrong status (got %d, expected %d)\n",
   status, tc->status);
  exit(EXIT_FAILURE);
 }
 if (status == BR_ERR_X509_NOT_TRUSTED) {
  ee_pkey = ((void*)0);
 }
 if (!eqpkey(ee_pkey, ee_pkey_ref)) {
  fprintf(stderr, "wrong EE public key\n");
  exit(EXIT_FAILURE);
 }




 for (u = (sizeof ctx.dp_stack) / sizeof(uint32_t); u > 0; u --) {
  if (ctx.dp_stack[u - 1] != 0xA7C083FE) {
   if (max_dp_usage < u) {
    max_dp_usage = u;
   }
   break;
  }
 }
 for (u = (sizeof ctx.rp_stack) / sizeof(uint32_t); u > 0; u --) {
  if (ctx.rp_stack[u - 1] != 0xA7C083FE) {
   if (max_rp_usage < u) {
    max_rp_usage = u;
   }
   break;
  }
 }




 for (u = 0; u < num_certs; u ++) {
  xfree(certs[u].data);
 }
 xfree(certs);
 xfree(anchors);
 printf("OK\n");
}
