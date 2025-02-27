
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_snapshot_ref {int dummy; } ;
struct intel_pt_recording {int snapshot_ref_cnt; struct intel_pt_snapshot_ref* snapshot_refs; } ;


 int ENOMEM ;
 struct intel_pt_snapshot_ref* calloc (int,size_t const) ;
 int memcpy (struct intel_pt_snapshot_ref*,struct intel_pt_snapshot_ref*,int) ;

__attribute__((used)) static int intel_pt_alloc_snapshot_refs(struct intel_pt_recording *ptr, int idx)
{
 const size_t sz = sizeof(struct intel_pt_snapshot_ref);
 int cnt = ptr->snapshot_ref_cnt, new_cnt = cnt * 2;
 struct intel_pt_snapshot_ref *refs;

 if (!new_cnt)
  new_cnt = 16;

 while (new_cnt <= idx)
  new_cnt *= 2;

 refs = calloc(new_cnt, sz);
 if (!refs)
  return -ENOMEM;

 memcpy(refs, ptr->snapshot_refs, cnt * sz);

 ptr->snapshot_refs = refs;
 ptr->snapshot_ref_cnt = new_cnt;

 return 0;
}
