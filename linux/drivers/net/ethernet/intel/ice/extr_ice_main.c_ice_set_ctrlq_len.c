
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* sq_buf_size; void* rq_buf_size; int num_sq_entries; int num_rq_entries; } ;
struct TYPE_4__ {void* sq_buf_size; void* rq_buf_size; void* num_sq_entries; void* num_rq_entries; } ;
struct ice_hw {TYPE_1__ mailboxq; TYPE_2__ adminq; } ;


 void* ICE_AQ_LEN ;
 void* ICE_AQ_MAX_BUF_LEN ;
 void* ICE_MBXQ_MAX_BUF_LEN ;
 int ICE_MBXRQ_LEN ;
 int ICE_MBXSQ_LEN ;

__attribute__((used)) static void ice_set_ctrlq_len(struct ice_hw *hw)
{
 hw->adminq.num_rq_entries = ICE_AQ_LEN;
 hw->adminq.num_sq_entries = ICE_AQ_LEN;
 hw->adminq.rq_buf_size = ICE_AQ_MAX_BUF_LEN;
 hw->adminq.sq_buf_size = ICE_AQ_MAX_BUF_LEN;
 hw->mailboxq.num_rq_entries = ICE_MBXRQ_LEN;
 hw->mailboxq.num_sq_entries = ICE_MBXSQ_LEN;
 hw->mailboxq.rq_buf_size = ICE_MBXQ_MAX_BUF_LEN;
 hw->mailboxq.sq_buf_size = ICE_MBXQ_MAX_BUF_LEN;
}
