
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int ahc_print_register (int *,int ,char*,int,int ,int *,int ) ;

int
ahc_scb_target_phases_print(u_int regvalue, u_int *cur_col, u_int wrap)
{
 return (ahc_print_register(((void*)0), 0, "SCB_TARGET_PHASES",
     0xa9, regvalue, cur_col, wrap));
}
