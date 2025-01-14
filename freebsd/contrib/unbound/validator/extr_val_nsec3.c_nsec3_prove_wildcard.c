
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct query_info {int qname_len; int qname; } ;
struct nsec3_filter {int zone; } ;
struct module_env {int dummy; } ;
struct key_entry_key {int dummy; } ;
struct ce_response {size_t ce_len; int nc_rr; scalar_t__ nc_rrset; int * ce; } ;
typedef int rbtree_type ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;
typedef int ce ;


 int VERB_ALGO ;
 int dname_count_size_labels (int *,size_t*) ;
 int filter_init (struct nsec3_filter*,struct ub_packed_rrset_key**,size_t,struct query_info*) ;
 int find_covering_nsec3 (struct module_env*,struct nsec3_filter*,int *,int *,size_t,scalar_t__*,int *) ;
 int key_entry_isgood (struct key_entry_key*) ;
 int memset (struct ce_response*,int ,int) ;
 int next_closer (int ,int ,int *,int **,size_t*) ;
 scalar_t__ nsec3_has_optout (scalar_t__,int ) ;
 int nsec3_hash_cmp ;
 scalar_t__ nsec3_iteration_count_high (struct val_env*,struct nsec3_filter*,struct key_entry_key*) ;
 int rbtree_init (int *,int *) ;
 int sec_status_bogus ;
 int sec_status_insecure ;
 int sec_status_secure ;
 int verbose (int ,char*) ;

enum sec_status
nsec3_prove_wildcard(struct module_env* env, struct val_env* ve,
        struct ub_packed_rrset_key** list, size_t num,
 struct query_info* qinfo, struct key_entry_key* kkey, uint8_t* wc)
{
 rbtree_type ct;
 struct nsec3_filter flt;
 struct ce_response ce;
 uint8_t* nc;
 size_t nc_len;
 size_t wclen;
 (void)dname_count_size_labels(wc, &wclen);

 if(!list || num == 0 || !kkey || !key_entry_isgood(kkey))
  return sec_status_bogus;
 rbtree_init(&ct, &nsec3_hash_cmp);
 filter_init(&flt, list, num, qinfo);
 if(!flt.zone)
  return sec_status_bogus;
 if(nsec3_iteration_count_high(ve, &flt, kkey))
  return sec_status_insecure;





 memset(&ce, 0, sizeof(ce));
 ce.ce = wc;
 ce.ce_len = wclen;



 next_closer(qinfo->qname, qinfo->qname_len, ce.ce, &nc, &nc_len);
 if(!find_covering_nsec3(env, &flt, &ct, nc, nc_len,
  &ce.nc_rrset, &ce.nc_rr)) {
  verbose(VERB_ALGO, "proveWildcard: did not find a covering "
   "NSEC3 that covered the next closer name.");
  return sec_status_bogus;
 }
 if(ce.nc_rrset && nsec3_has_optout(ce.nc_rrset, ce.nc_rr)) {
  verbose(VERB_ALGO, "proveWildcard: NSEC3 optout");
  return sec_status_insecure;
 }
 return sec_status_secure;
}
