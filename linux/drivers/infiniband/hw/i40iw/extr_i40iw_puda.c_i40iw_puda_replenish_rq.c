
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i40iw_puda_rsrc {scalar_t__ rxq_invalid_cnt; int rx_wqe_idx; int rq_size; } ;
struct i40iw_puda_buf {int dummy; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_list_empty ;
 struct i40iw_puda_buf* i40iw_puda_get_bufpool (struct i40iw_puda_rsrc*) ;
 int i40iw_puda_post_recvbuf (struct i40iw_puda_rsrc*,int,struct i40iw_puda_buf*,int) ;

__attribute__((used)) static enum i40iw_status_code i40iw_puda_replenish_rq(struct i40iw_puda_rsrc *rsrc,
            bool initial)
{
 u32 i;
 u32 invalid_cnt = rsrc->rxq_invalid_cnt;
 struct i40iw_puda_buf *buf = ((void*)0);

 for (i = 0; i < invalid_cnt; i++) {
  buf = i40iw_puda_get_bufpool(rsrc);
  if (!buf)
   return I40IW_ERR_list_empty;
  i40iw_puda_post_recvbuf(rsrc, rsrc->rx_wqe_idx, buf,
     initial);
  rsrc->rx_wqe_idx =
      ((rsrc->rx_wqe_idx + 1) % rsrc->rq_size);
  rsrc->rxq_invalid_cnt--;
 }
 return 0;
}
