
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct arm_smccc_res {long a0; } ;


 int ROCKCHIP_SIP_CONFIG_DRAM_ROUND_RATE ;
 int ROCKCHIP_SIP_DRAM_FREQ ;
 int arm_smccc_smc (int ,unsigned long,int ,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static long rockchip_ddrclk_sip_round_rate(struct clk_hw *hw,
        unsigned long rate,
        unsigned long *prate)
{
 struct arm_smccc_res res;

 arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, rate, 0,
        ROCKCHIP_SIP_CONFIG_DRAM_ROUND_RATE,
        0, 0, 0, 0, &res);

 return res.a0;
}
