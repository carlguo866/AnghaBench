
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_mfc_dev {TYPE_1__* mfc_regs; } ;
struct TYPE_2__ {int e_slice_type; } ;


 int readl (int ) ;

__attribute__((used)) static int s5p_mfc_get_enc_slice_type_v6(struct s5p_mfc_dev *dev)
{
 return readl(dev->mfc_regs->e_slice_type);
}
