
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {size_t count; size_t rrsig_count; } ;
typedef enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;
typedef int buf ;


 int log_info (char*,char const*,...) ;
 int packed_rr_to_string (struct ub_packed_rrset_key*,size_t,int ,char*,int) ;
 int verbosity ;

void log_packed_rrset(enum verbosity_value v, const char* str,
 struct ub_packed_rrset_key* rrset)
{
 struct packed_rrset_data* d = (struct packed_rrset_data*)rrset->
  entry.data;
 char buf[65535];
 size_t i;
 if(verbosity < v)
  return;
 for(i=0; i<d->count+d->rrsig_count; i++) {
  if(!packed_rr_to_string(rrset, i, 0, buf, sizeof(buf))) {
   log_info("%s: rr %d wire2str-error", str, (int)i);
  } else {
   log_info("%s: %s", str, buf);
  }
 }
}
