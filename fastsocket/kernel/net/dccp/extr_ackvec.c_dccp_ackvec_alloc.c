
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dccp_ackvec {int av_records; scalar_t__ av_vec_len; int av_time; scalar_t__ av_buf_nonce; scalar_t__ av_buf_ackno; scalar_t__ av_buf_head; } ;
typedef int gfp_t ;


 scalar_t__ DCCP_MAX_ACKVEC_LEN ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ UINT48_MAX ;
 int dccp_ackvec_slab ;
 struct dccp_ackvec* kmem_cache_alloc (int ,int const) ;
 int ktime_set (int ,int ) ;

struct dccp_ackvec *dccp_ackvec_alloc(const gfp_t priority)
{
 struct dccp_ackvec *av = kmem_cache_alloc(dccp_ackvec_slab, priority);

 if (av != ((void*)0)) {
  av->av_buf_head = DCCP_MAX_ACKVEC_LEN - 1;
  av->av_buf_ackno = UINT48_MAX + 1;
  av->av_buf_nonce = 0;
  av->av_time = ktime_set(0, 0);
  av->av_vec_len = 0;
  INIT_LIST_HEAD(&av->av_records);
 }

 return av;
}
