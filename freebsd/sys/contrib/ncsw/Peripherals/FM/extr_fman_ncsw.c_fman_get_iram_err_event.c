
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_fpm_regs {int fm_rcr; int fm_rie; } ;


 int FPM_IRAM_ECC_ERR_EX_EN ;
 int FPM_RAM_MURAM_ECC ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

uint32_t fman_get_iram_err_event(struct fman_fpm_regs *fpm_rg)
{
 uint32_t event, mask;

 event = ioread32be(&fpm_rg->fm_rcr) ;
 mask = ioread32be(&fpm_rg->fm_rie);

 iowrite32be(event & ~FPM_RAM_MURAM_ECC,
   &fpm_rg->fm_rcr);

 if ((mask & FPM_IRAM_ECC_ERR_EX_EN))
  return event;
 else
  return 0;
}
