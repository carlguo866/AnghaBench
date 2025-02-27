
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct ecore_hwfn {int dummy; } ;


 scalar_t__ GTT_BAR0_MAP_REG_IGU_CMD ;
 int LSB_IGU_CMD_ADDR ;
 int MSB_IGU_CMD_ADDR ;
 scalar_t__ REG_RD (struct ecore_hwfn*,scalar_t__) ;

u64 ecore_int_igu_read_sisr_reg(struct ecore_hwfn *p_hwfn)
{
 u32 intr_status_hi = 0, intr_status_lo = 0;
 u64 intr_status = 0;

 intr_status_lo = REG_RD(p_hwfn,
    GTT_BAR0_MAP_REG_IGU_CMD +
    LSB_IGU_CMD_ADDR * 8);
 intr_status_hi = REG_RD(p_hwfn,
    GTT_BAR0_MAP_REG_IGU_CMD +
    MSB_IGU_CMD_ADDR * 8);
 intr_status = ((u64)intr_status_hi << 32) + (u64)intr_status_lo;

 return intr_status;
}
