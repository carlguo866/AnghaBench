
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct bnxt_tx_ring_info {int tx_ring_struct; struct bnxt_napi* bnapi; } ;
struct TYPE_3__ {struct bnxt_cp_ring_info** cp_ring_arr; } ;
struct bnxt_napi {TYPE_1__ cp_ring; } ;
struct TYPE_4__ {int fw_ring_id; } ;
struct bnxt_cp_ring_info {TYPE_2__ cp_ring_struct; } ;
struct bnxt {int flags; } ;


 int BNXT_FLAG_CHIP_P5 ;
 size_t BNXT_TX_HDL ;
 int bnxt_cp_ring_from_grp (struct bnxt*,int *) ;

__attribute__((used)) static u16 bnxt_cp_ring_for_tx(struct bnxt *bp, struct bnxt_tx_ring_info *txr)
{
 if (bp->flags & BNXT_FLAG_CHIP_P5) {
  struct bnxt_napi *bnapi = txr->bnapi;
  struct bnxt_cp_ring_info *cpr;

  cpr = bnapi->cp_ring.cp_ring_arr[BNXT_TX_HDL];
  return cpr->cp_ring_struct.fw_ring_id;
 } else {
  return bnxt_cp_ring_from_grp(bp, &txr->tx_ring_struct);
 }
}
