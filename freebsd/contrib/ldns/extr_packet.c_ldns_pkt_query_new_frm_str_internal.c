
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ ldns_status ;
typedef int ldns_rr_type ;
typedef int ldns_rr_class ;
typedef int ldns_rr ;
typedef int ldns_rdf ;
struct TYPE_8__ {int * _tsig_rr; } ;
typedef TYPE_1__ ldns_pkt ;


 int LDNS_RR_CLASS_IN ;
 int LDNS_RR_TYPE_A ;
 int LDNS_SECTION_AUTHORITY ;
 int LDNS_SECTION_QUESTION ;
 scalar_t__ LDNS_STATUS_ERR ;
 scalar_t__ LDNS_STATUS_MEM_ERR ;
 scalar_t__ LDNS_STATUS_NULL ;
 scalar_t__ LDNS_STATUS_OK ;
 int ldns_pkt_free (TYPE_1__*) ;
 TYPE_1__* ldns_pkt_new () ;
 int ldns_pkt_push_rr (TYPE_1__*,int ,int *) ;
 int ldns_pkt_set_answerfrom (TYPE_1__*,int *) ;
 int ldns_pkt_set_flags (TYPE_1__*,int ) ;
 int ldns_rr_free (int *) ;
 int * ldns_rr_new () ;
 int ldns_rr_set_class (int *,int ) ;
 int ldns_rr_set_owner (int *,int *) ;
 int ldns_rr_set_question (int *,int) ;
 int ldns_rr_set_type (int *,int ) ;
 scalar_t__ ldns_str2rdf_dname (int **,char const*) ;

__attribute__((used)) static ldns_status
ldns_pkt_query_new_frm_str_internal(ldns_pkt **p, const char *name,
 ldns_rr_type rr_type, ldns_rr_class rr_class, uint16_t flags,
 ldns_rr* authsoa_rr)
{
 ldns_pkt *packet;
 ldns_rr *question_rr;
 ldns_rdf *name_rdf;

 packet = ldns_pkt_new();
 if (!packet) {
  return LDNS_STATUS_MEM_ERR;
 }

 if (!ldns_pkt_set_flags(packet, flags)) {
  return LDNS_STATUS_ERR;
 }

 question_rr = ldns_rr_new();
 if (!question_rr) {
  return LDNS_STATUS_MEM_ERR;
 }

 if (rr_type == 0) {
  rr_type = LDNS_RR_TYPE_A;
 }
 if (rr_class == 0) {
  rr_class = LDNS_RR_CLASS_IN;
 }

 if (ldns_str2rdf_dname(&name_rdf, name) == LDNS_STATUS_OK) {
  ldns_rr_set_owner(question_rr, name_rdf);
  ldns_rr_set_type(question_rr, rr_type);
  ldns_rr_set_class(question_rr, rr_class);
                ldns_rr_set_question(question_rr, 1);

  ldns_pkt_push_rr(packet, LDNS_SECTION_QUESTION, question_rr);
 } else {
  ldns_rr_free(question_rr);
  ldns_pkt_free(packet);
  return LDNS_STATUS_ERR;
 }

 if (authsoa_rr) {
  ldns_pkt_push_rr(packet, LDNS_SECTION_AUTHORITY, authsoa_rr);
 }

 packet->_tsig_rr = ((void*)0);
 ldns_pkt_set_answerfrom(packet, ((void*)0));
 if (p) {
  *p = packet;
  return LDNS_STATUS_OK;
 } else {
  ldns_pkt_free(packet);
  return LDNS_STATUS_NULL;
 }
}
