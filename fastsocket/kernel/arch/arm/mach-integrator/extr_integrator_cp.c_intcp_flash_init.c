
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CINTEGRATOR_FLASHPROG_FLWREN ;
 scalar_t__ INTCP_FLASHPROG ;
 scalar_t__ INTCP_VA_CTRL_BASE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int intcp_flash_init(void)
{
 u32 val;

 val = readl(INTCP_VA_CTRL_BASE + INTCP_FLASHPROG);
 val |= CINTEGRATOR_FLASHPROG_FLWREN;
 writel(val, INTCP_VA_CTRL_BASE + INTCP_FLASHPROG);

 return 0;
}
