
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpt_device {int reg_base; } ;


 int CPTX_PF_MBOX_ENA_W1SX (int ,int ) ;
 int cpt_write_csr64 (int ,int ,unsigned long long) ;

__attribute__((used)) static void cpt_enable_mbox_interrupts(struct cpt_device *cpt)
{

 cpt_write_csr64(cpt->reg_base, CPTX_PF_MBOX_ENA_W1SX(0, 0), ~0ull);
}
