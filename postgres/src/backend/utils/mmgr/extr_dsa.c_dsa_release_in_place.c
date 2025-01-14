
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ dsm_handle ;
struct TYPE_3__ {int magic; } ;
struct TYPE_4__ {int handle; scalar_t__ refcnt; int high_segment_index; scalar_t__* segment_handles; int lock; TYPE_1__ segment_header; } ;
typedef TYPE_2__ dsa_area_control ;


 int Assert (int) ;
 int DSA_SEGMENT_HEADER_MAGIC ;
 scalar_t__ DSM_HANDLE_INVALID ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int dsm_unpin_segment (scalar_t__) ;

void
dsa_release_in_place(void *place)
{
 dsa_area_control *control = (dsa_area_control *) place;
 int i;

 LWLockAcquire(&control->lock, LW_EXCLUSIVE);
 Assert(control->segment_header.magic ==
     (DSA_SEGMENT_HEADER_MAGIC ^ control->handle ^ 0));
 Assert(control->refcnt > 0);
 if (--control->refcnt == 0)
 {
  for (i = 0; i <= control->high_segment_index; ++i)
  {
   dsm_handle handle;

   handle = control->segment_handles[i];
   if (handle != DSM_HANDLE_INVALID)
    dsm_unpin_segment(handle);
  }
 }
 LWLockRelease(&control->lock);
}
