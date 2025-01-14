
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int ndr_mappings; struct nd_mapping* mapping; } ;
struct nd_mapping {int dummy; } ;
struct nd_label_id {int dummy; } ;
typedef int resource_size_t ;


 int scan_free (struct nd_region*,struct nd_mapping*,struct nd_label_id*,int ) ;

__attribute__((used)) static int shrink_dpa_allocation(struct nd_region *nd_region,
  struct nd_label_id *label_id, resource_size_t n)
{
 int i;

 for (i = 0; i < nd_region->ndr_mappings; i++) {
  struct nd_mapping *nd_mapping = &nd_region->mapping[i];
  int rc;

  rc = scan_free(nd_region, nd_mapping, label_id, n);
  if (rc)
   return rc;
 }

 return 0;
}
