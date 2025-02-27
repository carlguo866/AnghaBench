
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvme_controller {int ready_timeout_in_ms; } ;


 int DELAY (int) ;
 int ENXIO ;
 int NVME_CSTS_REG_RDY_MASK ;
 int NVME_CSTS_REG_RDY_SHIFT ;
 int nvme_mmio_read_4 (struct nvme_controller*,int) ;
 int nvme_printf (struct nvme_controller*,char*,int,int ) ;

__attribute__((used)) static int
nvme_ctrlr_wait_for_ready(struct nvme_controller *ctrlr, int desired_val)
{
 int ms_waited;
 uint32_t csts;

 ms_waited = 0;
 while (1) {
  csts = nvme_mmio_read_4(ctrlr, csts);
  if (csts == 0xffffffff)
   return (ENXIO);
  if (((csts >> NVME_CSTS_REG_RDY_SHIFT) & NVME_CSTS_REG_RDY_MASK)
      == desired_val)
   break;
  if (ms_waited++ > ctrlr->ready_timeout_in_ms) {
   nvme_printf(ctrlr, "controller ready did not become %d "
       "within %d ms\n", desired_val, ctrlr->ready_timeout_in_ms);
   return (ENXIO);
  }
  DELAY(1000);
 }

 return (0);
}
