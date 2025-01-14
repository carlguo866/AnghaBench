
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_cq {int flags; TYPE_1__* cqe64; } ;
struct ibv_cq_ex {int dummy; } ;
struct TYPE_3__ {int hds_ip_ext; int flags_rqpn; } ;


 int IBV_WC_GRH ;
 int IBV_WC_IP_CSUM_OK_SHIFT ;
 int IBV_WC_WITH_IMM ;
 int IBV_WC_WITH_INV ;
 scalar_t__ MLX5_CQE_L3_HDR_TYPE_IPV4 ;
 int MLX5_CQE_L3_OK ;
 int MLX5_CQE_L4_OK ;



 int MLX5_CQ_FLAGS_RX_CSUM_VALID ;
 int be32toh (int ) ;
 scalar_t__ get_cqe_l3_hdr_type (TYPE_1__*) ;
 int ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;
 int mlx5dv_get_cqe_opcode (TYPE_1__*) ;
 struct mlx5_cq* to_mcq (int ) ;

__attribute__((used)) static inline int mlx5_cq_read_wc_flags(struct ibv_cq_ex *ibcq)
{
 struct mlx5_cq *cq = to_mcq(ibv_cq_ex_to_cq(ibcq));
 int wc_flags = 0;

 if (cq->flags & MLX5_CQ_FLAGS_RX_CSUM_VALID)
  wc_flags = (!!(cq->cqe64->hds_ip_ext & MLX5_CQE_L4_OK) &
     !!(cq->cqe64->hds_ip_ext & MLX5_CQE_L3_OK) &
     (get_cqe_l3_hdr_type(cq->cqe64) ==
      MLX5_CQE_L3_HDR_TYPE_IPV4)) <<
    IBV_WC_IP_CSUM_OK_SHIFT;

 switch (mlx5dv_get_cqe_opcode(cq->cqe64)) {
 case 128:
 case 130:
  wc_flags |= IBV_WC_WITH_IMM;
  break;
 case 129:
  wc_flags |= IBV_WC_WITH_INV;
  break;
 }

 wc_flags |= ((be32toh(cq->cqe64->flags_rqpn) >> 28) & 3) ? IBV_WC_GRH : 0;
 return wc_flags;
}
