
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int ahd_print_register (int *,int ,char*,int,int ,int *,int ) ;

int
ahd_sghcnt_print(u_int regvalue, u_int *cur_col, u_int wrap)
{
 return (ahd_print_register(((void*)0), 0, "SGHCNT",
     0x84, regvalue, cur_col, wrap));
}
