
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu {int dummy; } ;
struct cr_regs {void* ram; void* cam; } ;


 int MMU_READ_CAM ;
 int MMU_READ_RAM ;
 void* iommu_read_reg (struct iommu*,int ) ;

__attribute__((used)) static void omap2_tlb_read_cr(struct iommu *obj, struct cr_regs *cr)
{
 cr->cam = iommu_read_reg(obj, MMU_READ_CAM);
 cr->ram = iommu_read_reg(obj, MMU_READ_RAM);
}
