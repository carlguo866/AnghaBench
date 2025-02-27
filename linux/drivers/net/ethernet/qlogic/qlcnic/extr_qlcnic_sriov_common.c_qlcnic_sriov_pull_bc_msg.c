
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qlcnic_hardware_context {int dummy; } ;
struct qlcnic_bc_hdr {int dummy; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;


 int QLCNIC_MBX_FW (struct qlcnic_hardware_context*,int) ;
 void* readl (int ) ;

__attribute__((used)) static void qlcnic_sriov_pull_bc_msg(struct qlcnic_adapter *adapter,
         u32 *hdr, u32 *pay, u32 size)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 u8 i, max = 2, hdr_size, j;

 hdr_size = (sizeof(struct qlcnic_bc_hdr) / sizeof(u32));
 max = (size / sizeof(u32)) + hdr_size;

 for (i = 2, j = 0; j < hdr_size; i++, j++)
  *(hdr++) = readl(QLCNIC_MBX_FW(ahw, i));
 for (; j < max; i++, j++)
  *(pay++) = readl(QLCNIC_MBX_FW(ahw, i));
}
