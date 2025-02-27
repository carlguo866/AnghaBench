
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ,int ) ;
 int NETIF_MSG_HW ;
 int REG_RD (struct qed_hwfn*,int ) ;
 int qed_set_ptt (struct qed_hwfn*,struct qed_ptt*,int ) ;

u32 qed_rd(struct qed_hwfn *p_hwfn,
    struct qed_ptt *p_ptt,
    u32 hw_addr)
{
 u32 bar_addr = qed_set_ptt(p_hwfn, p_ptt, hw_addr);
 u32 val = REG_RD(p_hwfn, bar_addr);

 DP_VERBOSE(p_hwfn, NETIF_MSG_HW,
     "bar_addr 0x%x, hw_addr 0x%x, val 0x%x\n",
     bar_addr, hw_addr, val);

 return val;
}
