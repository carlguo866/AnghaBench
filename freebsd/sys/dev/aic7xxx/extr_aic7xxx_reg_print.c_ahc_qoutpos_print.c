
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int ahc_print_register (int *,int ,char*,int,int ,int *,int ) ;

int
ahc_qoutpos_print(u_int regvalue, u_int *cur_col, u_int wrap)
{
 return (ahc_print_register(((void*)0), 0, "QOUTPOS",
     0x4e, regvalue, cur_col, wrap));
}
