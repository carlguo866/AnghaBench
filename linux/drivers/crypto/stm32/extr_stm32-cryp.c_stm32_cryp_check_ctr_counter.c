
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_cryp {int* last_ctr; } ;


 int CRYP_CR ;
 int CRYP_IV0LR ;
 int CRYP_IV0RR ;
 int CRYP_IV1LR ;
 int CRYP_IV1RR ;
 int CR_CRYPEN ;
 int stm32_cryp_hw_write_iv (struct stm32_cryp*,int*) ;
 void* stm32_cryp_read (struct stm32_cryp*,int ) ;
 int stm32_cryp_write (struct stm32_cryp*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void stm32_cryp_check_ctr_counter(struct stm32_cryp *cryp)
{
 u32 cr;

 if (unlikely(cryp->last_ctr[3] == 0xFFFFFFFF)) {
  cryp->last_ctr[3] = 0;
  cryp->last_ctr[2]++;
  if (!cryp->last_ctr[2]) {
   cryp->last_ctr[1]++;
   if (!cryp->last_ctr[1])
    cryp->last_ctr[0]++;
  }

  cr = stm32_cryp_read(cryp, CRYP_CR);
  stm32_cryp_write(cryp, CRYP_CR, cr & ~CR_CRYPEN);

  stm32_cryp_hw_write_iv(cryp, (u32 *)cryp->last_ctr);

  stm32_cryp_write(cryp, CRYP_CR, cr);
 }

 cryp->last_ctr[0] = stm32_cryp_read(cryp, CRYP_IV0LR);
 cryp->last_ctr[1] = stm32_cryp_read(cryp, CRYP_IV0RR);
 cryp->last_ctr[2] = stm32_cryp_read(cryp, CRYP_IV1LR);
 cryp->last_ctr[3] = stm32_cryp_read(cryp, CRYP_IV1RR);
}
