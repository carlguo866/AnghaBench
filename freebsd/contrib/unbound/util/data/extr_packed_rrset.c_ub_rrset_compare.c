
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ dname_len; scalar_t__ rrset_class; scalar_t__ flags; int dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;


 int query_dname_compare (int ,int ) ;

int
ub_rrset_compare(void* k1, void* k2)
{
 struct ub_packed_rrset_key* key1 = (struct ub_packed_rrset_key*)k1;
 struct ub_packed_rrset_key* key2 = (struct ub_packed_rrset_key*)k2;
 int c;
 if(key1 == key2)
  return 0;
 if(key1->rk.type != key2->rk.type) {
  if(key1->rk.type < key2->rk.type)
   return -1;
  return 1;
 }
 if(key1->rk.dname_len != key2->rk.dname_len) {
  if(key1->rk.dname_len < key2->rk.dname_len)
   return -1;
  return 1;
 }
 if((c=query_dname_compare(key1->rk.dname, key2->rk.dname)) != 0)
  return c;
 if(key1->rk.rrset_class != key2->rk.rrset_class) {
  if(key1->rk.rrset_class < key2->rk.rrset_class)
   return -1;
  return 1;
 }
 if(key1->rk.flags != key2->rk.flags) {
  if(key1->rk.flags < key2->rk.flags)
   return -1;
  return 1;
 }
 return 0;
}
