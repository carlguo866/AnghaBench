
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;


 int ldns_str2rdf_mnemonic4int8 (int ,int **,char const*) ;
 int ldns_tlsa_matching_types ;

ldns_status
ldns_str2rdf_matching_type(ldns_rdf **rd, const char *str)
{
 return ldns_str2rdf_mnemonic4int8(ldns_tlsa_matching_types, rd, str);
}
