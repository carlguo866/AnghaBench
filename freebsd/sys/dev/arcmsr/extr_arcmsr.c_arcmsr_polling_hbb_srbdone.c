
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct HBB_MessageUnit {int doneq_index; int* done_qbuffer; int iop2drv_doorbell; } ;
struct CommandControlBlock {scalar_t__ srb_state; TYPE_2__* pccb; struct AdapterControlBlock* acb; } ;
struct AdapterControlBlock {int pci_unit; int srboutstandingcount; scalar_t__ vir2phy_offset; int srb_dmamap; int srb_dmat; scalar_t__ pmu; } ;
struct TYPE_3__ {int target_id; int status; scalar_t__ target_lun; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;


 int ARCMSR_DOORBELL_INT_CLEAR_PATTERN ;
 int ARCMSR_MAX_HBB_POSTQUEUE ;
 int ARCMSR_SRBREPLY_FLAG_ERROR_MODE0 ;
 scalar_t__ ARCMSR_SRB_ABORTED ;
 scalar_t__ ARCMSR_SRB_START ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CAM_REQ_ABORTED ;
 int FALSE ;
 int TRUE ;
 int UDELAY (int) ;
 int WRITE_CHIP_REG32 (int ,int ,int ) ;
 int arcmsr_report_srb_state (struct AdapterControlBlock*,struct CommandControlBlock*,int ) ;
 int arcmsr_srb_complete (struct CommandControlBlock*,int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int printf (char*,int,...) ;

__attribute__((used)) static void arcmsr_polling_hbb_srbdone(struct AdapterControlBlock *acb, struct CommandControlBlock *poll_srb)
{
 struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;
 struct CommandControlBlock *srb;
 u_int32_t flag_srb, poll_srb_done=0, poll_count=0;
 int index;
 u_int16_t error;

polling_ccb_retry:
 poll_count++;
 WRITE_CHIP_REG32(0, phbbmu->iop2drv_doorbell, ARCMSR_DOORBELL_INT_CLEAR_PATTERN);
 bus_dmamap_sync(acb->srb_dmat, acb->srb_dmamap, BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
 while(1) {
  index = phbbmu->doneq_index;
  if((flag_srb = phbbmu->done_qbuffer[index]) == 0) {
   if(poll_srb_done) {
    break;
   } else {
    UDELAY(25000);
    if ((poll_count > 100) && (poll_srb != ((void*)0))) {
     break;
    }
    goto polling_ccb_retry;
   }
  }
  phbbmu->done_qbuffer[index] = 0;
  index++;
  index %= ARCMSR_MAX_HBB_POSTQUEUE;
  phbbmu->doneq_index = index;

  srb = (struct CommandControlBlock *)
   (acb->vir2phy_offset+(flag_srb << 5));
  error = (flag_srb & ARCMSR_SRBREPLY_FLAG_ERROR_MODE0)?TRUE:FALSE;
  poll_srb_done = (srb == poll_srb) ? 1:0;
  if((srb->acb != acb) || (srb->srb_state != ARCMSR_SRB_START)) {
   if(srb->srb_state == ARCMSR_SRB_ABORTED) {
    printf("arcmsr%d: scsi id=%d lun=%jx srb='%p'"
     "poll command abort successfully \n"
     , acb->pci_unit
     , srb->pccb->ccb_h.target_id
     , (uintmax_t)srb->pccb->ccb_h.target_lun, srb);
    srb->pccb->ccb_h.status |= CAM_REQ_ABORTED;
    arcmsr_srb_complete(srb, 1);
    continue;
   }
   printf("arcmsr%d: polling get an illegal srb command done srb='%p'"
    "srboutstandingcount=%d \n"
    , acb->pci_unit
    , srb, acb->srboutstandingcount);
   continue;
  }
  arcmsr_report_srb_state(acb, srb, error);
 }
}
