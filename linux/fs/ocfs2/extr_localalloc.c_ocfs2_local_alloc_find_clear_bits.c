
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_reservation_map {int dummy; } ;
struct ocfs2_super {scalar_t__ osb_resv_level; struct ocfs2_reservation_map osb_la_resmap; } ;
struct TYPE_4__ {int i_total; } ;
struct TYPE_5__ {TYPE_1__ bitmap1; } ;
struct ocfs2_dinode {TYPE_2__ id1; } ;
struct ocfs2_alloc_reservation {int dummy; } ;
struct TYPE_6__ {void* la_bitmap; } ;


 int BUG_ON (int) ;
 TYPE_3__* OCFS2_LOCAL_ALLOC (struct ocfs2_dinode*) ;
 int OCFS2_RESV_FLAG_TMP ;
 int le32_to_cpu (int ) ;
 int ocfs2_find_next_zero_bit (void*,int,int) ;
 scalar_t__ ocfs2_resmap_resv_bits (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*,int*,int*) ;
 int ocfs2_resv_discard (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*) ;
 int ocfs2_resv_init_once (struct ocfs2_alloc_reservation*) ;
 int ocfs2_resv_set_type (struct ocfs2_alloc_reservation*,int ) ;
 int trace_ocfs2_local_alloc_find_clear_bits (int,int,int,int) ;
 int trace_ocfs2_local_alloc_find_clear_bits_search_bitmap (int,int) ;

__attribute__((used)) static int ocfs2_local_alloc_find_clear_bits(struct ocfs2_super *osb,
         struct ocfs2_dinode *alloc,
         u32 *numbits,
         struct ocfs2_alloc_reservation *resv)
{
 int numfound = 0, bitoff, left, startoff;
 int local_resv = 0;
 struct ocfs2_alloc_reservation r;
 void *bitmap = ((void*)0);
 struct ocfs2_reservation_map *resmap = &osb->osb_la_resmap;

 if (!alloc->id1.bitmap1.i_total) {
  bitoff = -1;
  goto bail;
 }

 if (!resv) {
  local_resv = 1;
  ocfs2_resv_init_once(&r);
  ocfs2_resv_set_type(&r, OCFS2_RESV_FLAG_TMP);
  resv = &r;
 }

 numfound = *numbits;
 if (ocfs2_resmap_resv_bits(resmap, resv, &bitoff, &numfound) == 0) {
  if (numfound < *numbits)
   *numbits = numfound;
  goto bail;
 }





 BUG_ON(osb->osb_resv_level != 0);





 bitmap = OCFS2_LOCAL_ALLOC(alloc)->la_bitmap;

 numfound = bitoff = startoff = 0;
 left = le32_to_cpu(alloc->id1.bitmap1.i_total);
 while ((bitoff = ocfs2_find_next_zero_bit(bitmap, left, startoff)) != -1) {
  if (bitoff == left) {

   break;
  }





  if (bitoff == startoff) {

   numfound++;
   startoff++;
  } else {

   numfound = 1;
   startoff = bitoff+1;
  }

  if (numfound == *numbits) {

   break;
  }
 }

 trace_ocfs2_local_alloc_find_clear_bits_search_bitmap(bitoff, numfound);

 if (numfound == *numbits)
  bitoff = startoff - numfound;
 else
  bitoff = -1;

bail:
 if (local_resv)
  ocfs2_resv_discard(resmap, resv);

 trace_ocfs2_local_alloc_find_clear_bits(*numbits,
  le32_to_cpu(alloc->id1.bitmap1.i_total),
  bitoff, numfound);

 return bitoff;
}
