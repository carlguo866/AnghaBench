
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int T_DDR_TIMING_PARAMETERS ;
typedef int T_DDR_CONFIG_PARAMETERS ;


 int C_BLKEN_DDR_ON ;
 int C_CP_DDR2_25_CL6 ;
 scalar_t__ C_DDR_BLKEN_REG ;
 scalar_t__ C_DDR_TRANSACTION_ROUTING ;
 int C_TP_DDR2_25_CL6_1GB ;
 int DDR_ROUTE_CPU0_INSTR_SHIFT ;
 int DDR_ROUTE_CPU0_RDDATA_SHIFT ;
 int DDR_ROUTE_CPU0_WRDATA_SHIFT ;
 int DDR_ROUTE_CPU1_INSTR_SHIFT ;
 int DDR_ROUTE_CPU1_RDDATA_SHIFT ;
 int DDR_ROUTE_CPU1_WRDATA_SHIFT ;
 int ddr_normal_initialisation (int const*,int) ;
 int ddr_timing_initialisation (int const*) ;

void ddr_setup(int mhz)
{
 static const T_DDR_TIMING_PARAMETERS *ddr_timing_parameters =
  &C_TP_DDR2_25_CL6_1GB;
 static const T_DDR_CONFIG_PARAMETERS *ddr_config_parameters =
  &C_CP_DDR2_25_CL6;


 *(volatile UINT *) C_DDR_BLKEN_REG = C_BLKEN_DDR_ON;


 ddr_timing_initialisation(ddr_timing_parameters);


 ddr_normal_initialisation(ddr_config_parameters, mhz);


 *(volatile UINT *) C_DDR_TRANSACTION_ROUTING = (0
  << DDR_ROUTE_CPU0_INSTR_SHIFT)
  | (1 << DDR_ROUTE_CPU0_RDDATA_SHIFT)
  | (3 << DDR_ROUTE_CPU0_WRDATA_SHIFT)
  | (2 << DDR_ROUTE_CPU1_INSTR_SHIFT)
  | (3 << DDR_ROUTE_CPU1_RDDATA_SHIFT)
  | (3 << DDR_ROUTE_CPU1_WRDATA_SHIFT);


 *(volatile UINT *) C_DDR_BLKEN_REG = C_BLKEN_DDR_ON + 0x0000FFFF;

}
