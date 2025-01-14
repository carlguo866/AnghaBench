
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metafile {int data; TYPE_1__* header; } ;
struct index_entry {int dummy; } ;
struct TYPE_2__ {int nrecords; } ;


 int assert (int) ;
 struct index_entry index_entry_not_found ;
 struct index_entry* metafile_get_entry (int,int) ;
 int metafile_load (int) ;
 int metafile_number ;
 struct metafile* metafiles ;

struct index_entry* index_get_num (int n, int use_aio) {
  int l = 0;
  int sum = 0;
  while (l < metafile_number && n >= sum + metafiles[l].header->nrecords) {
    sum += metafiles[l].header->nrecords;
    l++;
  }
  if (l == metafile_number) {
    return &index_entry_not_found;
  }
  metafile_load (l);
  struct metafile* meta = &metafiles[l];
  assert (meta->data);
  assert (n - sum >= 0);
  assert (n - sum < meta->header->nrecords);

  return metafile_get_entry (l, n - sum);
}
