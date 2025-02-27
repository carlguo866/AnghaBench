
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_2__ {scalar_t__ max_vfs; } ;
struct octeon_device {scalar_t__ rev_id; TYPE_1__ sriov_info; scalar_t__ chip; } ;
struct octeon_cn23xx_pf {int intr_enb_reg64; int intr_mask64; } ;


 int CN23XX_INTR_PKT_DATA ;
 int CN23XX_INTR_VF_MBOX ;
 int OCTEON_ALL_INTR ;
 scalar_t__ OCTEON_CN23XX_REV_1_1 ;
 int OCTEON_MBOX_INTR ;
 int OCTEON_OUTPUT_INTR ;
 int readq (int ) ;
 int writeq (int ,int ) ;

__attribute__((used)) static void cn23xx_enable_pf_interrupt(struct octeon_device *oct, u8 intr_flag)
{
 struct octeon_cn23xx_pf *cn23xx = (struct octeon_cn23xx_pf *)oct->chip;
 u64 intr_val = 0;



 if (intr_flag == OCTEON_ALL_INTR) {
  writeq(cn23xx->intr_mask64, cn23xx->intr_enb_reg64);
 } else if (intr_flag & OCTEON_OUTPUT_INTR) {
  intr_val = readq(cn23xx->intr_enb_reg64);
  intr_val |= CN23XX_INTR_PKT_DATA;
  writeq(intr_val, cn23xx->intr_enb_reg64);
 } else if ((intr_flag & OCTEON_MBOX_INTR) &&
     (oct->sriov_info.max_vfs > 0)) {
  if (oct->rev_id >= OCTEON_CN23XX_REV_1_1) {
   intr_val = readq(cn23xx->intr_enb_reg64);
   intr_val |= CN23XX_INTR_VF_MBOX;
   writeq(intr_val, cn23xx->intr_enb_reg64);
  }
 }
}
