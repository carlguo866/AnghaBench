
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int lenerr_en; scalar_t__ hdr_sl; scalar_t__ rx_hdr; scalar_t__ maxlen; scalar_t__ minlen; } ;
struct nicpf {int flags; TYPE_1__ pkind; } ;


 int BGX0_BLOCK ;
 int BGX1_BLOCK ;
 int ETHERTYPE_VLAN ;
 scalar_t__ ETHER_HDR_LEN ;
 int ETYPE_ALG_VLAN_STRIP ;
 int NICPF_CLK_PER_INT_TICK ;
 scalar_t__ NIC_HW_MAX_FRS ;
 int NIC_HW_MIN_FRS ;
 int NIC_MAX_PKIND ;
 int NIC_PF_BP_CFG ;
 int NIC_PF_CFG ;
 int NIC_PF_INTF_0_1_BP_CFG ;
 int NIC_PF_INTF_0_1_SEND_CFG ;
 int NIC_PF_INTR_TIMER_CFG ;
 int NIC_PF_PKIND_0_15_CFG ;
 int NIC_PF_RX_ETYPE_0_7 ;
 int NIC_TNS_BYPASS_MODE ;
 int NIC_TNS_ENABLED ;
 int NIC_TNS_MODE ;
 int TNS_PORT0_BLOCK ;
 int TNS_PORT1_BLOCK ;
 int nic_reg_write (struct nicpf*,int,int) ;
 int nic_set_tx_pkt_pad (struct nicpf*,int ) ;

__attribute__((used)) static void
nic_init_hw(struct nicpf *nic)
{
 int i;


 nic_reg_write(nic, NIC_PF_CFG, 0x3);


 nic_reg_write(nic, NIC_PF_BP_CFG, (1UL << 6) | 0x03);

 if (nic->flags & NIC_TNS_ENABLED) {
  nic_reg_write(nic, NIC_PF_INTF_0_1_SEND_CFG,
      (NIC_TNS_MODE << 7) | TNS_PORT0_BLOCK);
  nic_reg_write(nic, NIC_PF_INTF_0_1_SEND_CFG | (1 << 8),
      (NIC_TNS_MODE << 7) | TNS_PORT1_BLOCK);
  nic_reg_write(nic, NIC_PF_INTF_0_1_BP_CFG,
      (1UL << 63) | TNS_PORT0_BLOCK);
  nic_reg_write(nic, NIC_PF_INTF_0_1_BP_CFG + (1 << 8),
      (1UL << 63) | TNS_PORT1_BLOCK);

 } else {

  nic_reg_write(nic, NIC_PF_INTF_0_1_SEND_CFG,
      (NIC_TNS_BYPASS_MODE << 7) | BGX0_BLOCK);
  nic_reg_write(nic, NIC_PF_INTF_0_1_SEND_CFG | (1 << 8),
      (NIC_TNS_BYPASS_MODE << 7) | BGX1_BLOCK);
  nic_reg_write(nic, NIC_PF_INTF_0_1_BP_CFG,
      (1UL << 63) | BGX0_BLOCK);
  nic_reg_write(nic, NIC_PF_INTF_0_1_BP_CFG + (1 << 8),
      (1UL << 63) | BGX1_BLOCK);
 }


 nic->pkind.minlen = 0;
 nic->pkind.maxlen = NIC_HW_MAX_FRS + ETHER_HDR_LEN;
 nic->pkind.lenerr_en = 1;
 nic->pkind.rx_hdr = 0;
 nic->pkind.hdr_sl = 0;

 for (i = 0; i < NIC_MAX_PKIND; i++) {
  nic_reg_write(nic, NIC_PF_PKIND_0_15_CFG | (i << 3),
      *(uint64_t *)&nic->pkind);
 }

 nic_set_tx_pkt_pad(nic, NIC_HW_MIN_FRS);


 nic_reg_write(nic, NIC_PF_INTR_TIMER_CFG, NICPF_CLK_PER_INT_TICK);


 nic_reg_write(nic, NIC_PF_RX_ETYPE_0_7,
     (2 << 19) | (ETYPE_ALG_VLAN_STRIP << 16) | ETHERTYPE_VLAN);
}
