
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int time_t ;
struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct rbtree_type {int dummy; } ;
struct module_qstate {int dummy; } ;
struct module_env {int scratch_buffer; int scratch; } ;
typedef int sldns_pkt_section ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 int VERB_ALGO ;
 int VERB_QUERY ;
 int dnskey_algo_id_is_supported (int) ;
 scalar_t__ dnskey_calc_keytag (struct ub_packed_rrset_key*,size_t) ;
 int dnskey_get_algo (struct ub_packed_rrset_key*,size_t) ;
 int dnskey_verify_rrset_sig (int ,int ,struct val_env*,int ,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,size_t,size_t,struct rbtree_type**,int*,char**,int ,struct module_qstate*) ;
 size_t rrset_get_count (struct ub_packed_rrset_key*) ;
 int rrset_get_sig_algo (struct ub_packed_rrset_key*,size_t) ;
 scalar_t__ rrset_get_sig_keytag (struct ub_packed_rrset_key*,size_t) ;
 int sec_status_bogus ;
 int sec_status_insecure ;
 int sec_status_secure ;
 int verbose (int ,char*,...) ;

enum sec_status
dnskeyset_verify_rrset_sig(struct module_env* env, struct val_env* ve,
 time_t now, struct ub_packed_rrset_key* rrset,
 struct ub_packed_rrset_key* dnskey, size_t sig_idx,
 struct rbtree_type** sortree, char** reason, sldns_pkt_section section,
 struct module_qstate* qstate)
{

 enum sec_status sec = sec_status_bogus;
 uint16_t tag = rrset_get_sig_keytag(rrset, sig_idx);
 int algo = rrset_get_sig_algo(rrset, sig_idx);
 size_t i, num = rrset_get_count(dnskey);
 size_t numchecked = 0;
 int buf_canon = 0;
 verbose(VERB_ALGO, "verify sig %d %d", (int)tag, algo);
 if(!dnskey_algo_id_is_supported(algo)) {
  verbose(VERB_QUERY, "verify sig: unknown algorithm");
  return sec_status_insecure;
 }

 for(i=0; i<num; i++) {

  if(algo != dnskey_get_algo(dnskey, i) ||
   tag != dnskey_calc_keytag(dnskey, i))
   continue;
  numchecked ++;


  sec = dnskey_verify_rrset_sig(env->scratch,
   env->scratch_buffer, ve, now, rrset, dnskey, i,
   sig_idx, sortree, &buf_canon, reason, section, qstate);
  if(sec == sec_status_secure)
   return sec;
 }
 if(numchecked == 0) {
  *reason = "signatures from unknown keys";
  verbose(VERB_QUERY, "verify: could not find appropriate key");
  return sec_status_bogus;
 }
 return sec_status_bogus;
}
