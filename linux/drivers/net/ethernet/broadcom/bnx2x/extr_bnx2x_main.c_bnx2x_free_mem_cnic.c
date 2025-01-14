
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host_hc_status_block_e2 {int dummy; } ;
struct host_hc_status_block_e1x {int dummy; } ;
struct TYPE_2__ {int e1x_sb; int e2_sb; } ;
struct bnx2x {int t2_mapping; int t2; int cnic_sb_mapping; TYPE_1__ cnic_sb; } ;


 int BNX2X_PCI_FREE (int ,int ,int) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 int ILT_MEMOP_FREE ;
 int SRC_T2_SZ ;
 int bnx2x_ilt_mem_op_cnic (struct bnx2x*,int ) ;

void bnx2x_free_mem_cnic(struct bnx2x *bp)
{
 bnx2x_ilt_mem_op_cnic(bp, ILT_MEMOP_FREE);

 if (!CHIP_IS_E1x(bp))
  BNX2X_PCI_FREE(bp->cnic_sb.e2_sb, bp->cnic_sb_mapping,
          sizeof(struct host_hc_status_block_e2));
 else
  BNX2X_PCI_FREE(bp->cnic_sb.e1x_sb, bp->cnic_sb_mapping,
          sizeof(struct host_hc_status_block_e1x));

 BNX2X_PCI_FREE(bp->t2, bp->t2_mapping, SRC_T2_SZ);
}
