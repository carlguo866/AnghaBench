
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ecore_hwfn {int dummy; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int QM_PF_RL_MAX_INC_VAL ;
 int QM_PF_RL_UPPER_BOUND ;
 scalar_t__ QM_REG_RLPFCRD_RT_OFFSET ;
 scalar_t__ QM_REG_RLPFINCVAL_RT_OFFSET ;
 scalar_t__ QM_REG_RLPFUPPERBOUND_RT_OFFSET ;
 scalar_t__ QM_RL_CRD_REG_SIGN_BIT ;
 int QM_RL_INC_VAL (int) ;
 int STORE_RT_REG (struct ecore_hwfn*,scalar_t__,int) ;

__attribute__((used)) static int ecore_pf_rl_rt_init(struct ecore_hwfn *p_hwfn,
         u8 pf_id,
         u32 pf_rl)
{
 u32 inc_val;

 inc_val = QM_RL_INC_VAL(pf_rl);
 if (inc_val > QM_PF_RL_MAX_INC_VAL) {
  DP_NOTICE(p_hwfn, 1, "Invalid PF rate limit configuration\n");
  return -1;
 }

 STORE_RT_REG(p_hwfn, QM_REG_RLPFCRD_RT_OFFSET + pf_id, (u32)QM_RL_CRD_REG_SIGN_BIT);
 STORE_RT_REG(p_hwfn, QM_REG_RLPFUPPERBOUND_RT_OFFSET + pf_id, QM_PF_RL_UPPER_BOUND | (u32)QM_RL_CRD_REG_SIGN_BIT);
 STORE_RT_REG(p_hwfn, QM_REG_RLPFINCVAL_RT_OFFSET + pf_id, inc_val);

 return 0;
}
