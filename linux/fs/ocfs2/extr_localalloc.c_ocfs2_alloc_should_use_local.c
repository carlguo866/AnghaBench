
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_super {int local_alloc_bits; int osb_lock; int local_alloc_state; } ;


 int ocfs2_la_state_enabled (struct ocfs2_super*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ocfs2_alloc_should_use_local (unsigned long long,int ,int,int) ;

int ocfs2_alloc_should_use_local(struct ocfs2_super *osb, u64 bits)
{
 int ret = 0;
 int la_bits;

 spin_lock(&osb->osb_lock);
 la_bits = osb->local_alloc_bits;

 if (!ocfs2_la_state_enabled(osb))
  goto bail;





 if (bits > (la_bits / 2))
  goto bail;

 ret = 1;
bail:
 trace_ocfs2_alloc_should_use_local(
      (unsigned long long)bits, osb->local_alloc_state, la_bits, ret);
 spin_unlock(&osb->osb_lock);
 return ret;
}
