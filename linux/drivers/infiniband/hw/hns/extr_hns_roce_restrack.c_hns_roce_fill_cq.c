
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hns_roce_v2_cq_context {int byte_52_cqe_cnt; int byte_56_cqe_period_maxcnt; int byte_32_cq_ci; int byte_28_cq_pi; int byte_16_hop_addr; int byte_8_cqn; int byte_4_pg_ceqn; } ;


 int EMSGSIZE ;
 int V2_CQC_BYTE_16_CQE_HOP_NUM_M ;
 int V2_CQC_BYTE_16_CQE_HOP_NUM_S ;
 int V2_CQC_BYTE_28_CQ_PRODUCER_IDX_M ;
 int V2_CQC_BYTE_28_CQ_PRODUCER_IDX_S ;
 int V2_CQC_BYTE_32_CQ_CONSUMER_IDX_M ;
 int V2_CQC_BYTE_32_CQ_CONSUMER_IDX_S ;
 int V2_CQC_BYTE_4_ARM_ST_M ;
 int V2_CQC_BYTE_4_ARM_ST_S ;
 int V2_CQC_BYTE_4_CEQN_M ;
 int V2_CQC_BYTE_4_CEQN_S ;
 int V2_CQC_BYTE_52_CQE_CNT_M ;
 int V2_CQC_BYTE_52_CQE_CNT_S ;
 int V2_CQC_BYTE_56_CQ_MAX_CNT_M ;
 int V2_CQC_BYTE_56_CQ_MAX_CNT_S ;
 int V2_CQC_BYTE_56_CQ_PERIOD_M ;
 int V2_CQC_BYTE_56_CQ_PERIOD_S ;
 int V2_CQC_BYTE_8_CQN_M ;
 int V2_CQC_BYTE_8_CQN_S ;
 scalar_t__ rdma_nl_put_driver_u32 (struct sk_buff*,char*,int ) ;
 int roce_get_field (int ,int ,int ) ;

__attribute__((used)) static int hns_roce_fill_cq(struct sk_buff *msg,
       struct hns_roce_v2_cq_context *context)
{
 if (rdma_nl_put_driver_u32(msg, "state",
       roce_get_field(context->byte_4_pg_ceqn,
        V2_CQC_BYTE_4_ARM_ST_M,
        V2_CQC_BYTE_4_ARM_ST_S)))
  goto err;

 if (rdma_nl_put_driver_u32(msg, "ceqn",
       roce_get_field(context->byte_4_pg_ceqn,
        V2_CQC_BYTE_4_CEQN_M,
        V2_CQC_BYTE_4_CEQN_S)))
  goto err;

 if (rdma_nl_put_driver_u32(msg, "cqn",
       roce_get_field(context->byte_8_cqn,
        V2_CQC_BYTE_8_CQN_M,
        V2_CQC_BYTE_8_CQN_S)))
  goto err;

 if (rdma_nl_put_driver_u32(msg, "hopnum",
       roce_get_field(context->byte_16_hop_addr,
        V2_CQC_BYTE_16_CQE_HOP_NUM_M,
        V2_CQC_BYTE_16_CQE_HOP_NUM_S)))
  goto err;

 if (rdma_nl_put_driver_u32(
      msg, "pi",
      roce_get_field(context->byte_28_cq_pi,
       V2_CQC_BYTE_28_CQ_PRODUCER_IDX_M,
       V2_CQC_BYTE_28_CQ_PRODUCER_IDX_S)))
  goto err;

 if (rdma_nl_put_driver_u32(
      msg, "ci",
      roce_get_field(context->byte_32_cq_ci,
       V2_CQC_BYTE_32_CQ_CONSUMER_IDX_M,
       V2_CQC_BYTE_32_CQ_CONSUMER_IDX_S)))
  goto err;

 if (rdma_nl_put_driver_u32(
      msg, "coalesce",
      roce_get_field(context->byte_56_cqe_period_maxcnt,
       V2_CQC_BYTE_56_CQ_MAX_CNT_M,
       V2_CQC_BYTE_56_CQ_MAX_CNT_S)))
  goto err;

 if (rdma_nl_put_driver_u32(
      msg, "period",
      roce_get_field(context->byte_56_cqe_period_maxcnt,
       V2_CQC_BYTE_56_CQ_PERIOD_M,
       V2_CQC_BYTE_56_CQ_PERIOD_S)))
  goto err;

 if (rdma_nl_put_driver_u32(msg, "cnt",
       roce_get_field(context->byte_52_cqe_cnt,
        V2_CQC_BYTE_52_CQE_CNT_M,
        V2_CQC_BYTE_52_CQE_CNT_S)))
  goto err;

 return 0;

err:
 return -EMSGSIZE;
}
