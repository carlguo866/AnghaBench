
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rate_key {scalar_t__ namelen; int name; } ;


 int query_dname_compare (int ,int ) ;

int
rate_compfunc(void* key1, void* key2)
{
 struct rate_key* k1 = (struct rate_key*)key1;
 struct rate_key* k2 = (struct rate_key*)key2;
 if(k1->namelen != k2->namelen) {
  if(k1->namelen < k2->namelen)
   return -1;
  return 1;
 }
 return query_dname_compare(k1->name, k2->name);
}
