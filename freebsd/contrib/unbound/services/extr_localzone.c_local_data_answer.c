
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; int dname_len; int dname; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; } ;
struct regional {int dummy; } ;
struct query_info {int qname_len; int qname; TYPE_3__* local_alias; int qtype; } ;
struct module_env {int dummy; } ;
struct local_zone {int namelabs; int data; int namelen; int name; } ;
struct local_rrset {struct ub_packed_rrset_key* rrset; } ;
struct TYPE_10__ {struct local_data* key; } ;
struct local_data {int namelabs; TYPE_5__ node; int namelen; int name; } ;
struct edns_data {int dummy; } ;
struct config_strlist {int dummy; } ;
struct comm_reply {int dummy; } ;
typedef int sldns_buffer ;
typedef int r ;
typedef enum localzone_type { ____Placeholder_localzone_type } localzone_type ;
struct TYPE_6__ {int dname_len; int dname; } ;
struct TYPE_9__ {TYPE_1__ rk; } ;
struct TYPE_8__ {TYPE_4__* rrset; } ;


 int LDNS_RCODE_NOERROR ;
 int LDNS_RR_TYPE_CNAME ;
 int VERB_ALGO ;
 scalar_t__ find_tag_datas (struct query_info*,struct config_strlist*,struct ub_packed_rrset_key*,struct regional*) ;
 scalar_t__ htons (int ) ;
 struct local_rrset* local_data_find_type (struct local_data*,int ,int) ;
 int local_encode (struct query_info*,struct module_env*,struct edns_data*,struct comm_reply*,int *,struct regional*,struct ub_packed_rrset_key*,int,int ) ;
 int local_zone_inform_redirect ;
 int local_zone_redirect ;
 int memset (struct ub_packed_rrset_key*,int ,int) ;
 scalar_t__ rbtree_search (int *,TYPE_5__*) ;
 TYPE_4__* regional_alloc_init (struct regional*,struct ub_packed_rrset_key*,int) ;
 TYPE_3__* regional_alloc_zero (struct regional*,int) ;
 int verbose (int ,char*,int,char*) ;

__attribute__((used)) static int
local_data_answer(struct local_zone* z, struct module_env* env,
 struct query_info* qinfo, struct edns_data* edns,
 struct comm_reply* repinfo, sldns_buffer* buf,
 struct regional* temp, int labs, struct local_data** ldp,
 enum localzone_type lz_type, int tag, struct config_strlist** tag_datas,
 size_t tag_datas_size, char** tagname, int num_tags)
{
 struct local_data key;
 struct local_data* ld;
 struct local_rrset* lr;
 key.node.key = &key;
 key.name = qinfo->qname;
 key.namelen = qinfo->qname_len;
 key.namelabs = labs;
 if(lz_type == local_zone_redirect ||
  lz_type == local_zone_inform_redirect) {
  key.name = z->name;
  key.namelen = z->namelen;
  key.namelabs = z->namelabs;
  if(tag != -1 && (size_t)tag<tag_datas_size && tag_datas[tag]) {
   struct ub_packed_rrset_key r;
   memset(&r, 0, sizeof(r));
   if(find_tag_datas(qinfo, tag_datas[tag], &r, temp)) {
    verbose(VERB_ALGO, "redirect with tag data [%d] %s",
     tag, (tag<num_tags?tagname[tag]:"null"));





    if(qinfo->local_alias)
     return 1;
    return local_encode(qinfo, env, edns, repinfo, buf, temp,
     &r, 1, LDNS_RCODE_NOERROR);
   }
  }
 }
 ld = (struct local_data*)rbtree_search(&z->data, &key.node);
 *ldp = ld;
 if(!ld) {
  return 0;
 }
 lr = local_data_find_type(ld, qinfo->qtype, 1);
 if(!lr)
  return 0;


 if((lz_type == local_zone_redirect ||
  lz_type == local_zone_inform_redirect) &&
  qinfo->qtype != LDNS_RR_TYPE_CNAME &&
  lr->rrset->rk.type == htons(LDNS_RR_TYPE_CNAME)) {
  qinfo->local_alias =
   regional_alloc_zero(temp, sizeof(struct local_rrset));
  if(!qinfo->local_alias)
   return 0;
  qinfo->local_alias->rrset =
   regional_alloc_init(temp, lr->rrset, sizeof(*lr->rrset));
  if(!qinfo->local_alias->rrset)
   return 0;
  qinfo->local_alias->rrset->rk.dname = qinfo->qname;
  qinfo->local_alias->rrset->rk.dname_len = qinfo->qname_len;
  return 1;
 }
 if(lz_type == local_zone_redirect ||
  lz_type == local_zone_inform_redirect) {

  struct ub_packed_rrset_key r = *lr->rrset;
  r.rk.dname = qinfo->qname;
  r.rk.dname_len = qinfo->qname_len;
  return local_encode(qinfo, env, edns, repinfo, buf, temp, &r, 1,
   LDNS_RCODE_NOERROR);
 }
 return local_encode(qinfo, env, edns, repinfo, buf, temp, lr->rrset, 1,
  LDNS_RCODE_NOERROR);
}
