
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int16_t ;
struct InBound_SRB {int length; int addressLow; int addressHigh; } ;
struct HBD_MessageUnit0 {int postq_index; int * post_qbuffer; } ;
struct HBB_MessageUnit {int postq_index; int* post_qbuffer; int drv2iop_doorbell; } ;
struct CommandControlBlock {int srb_flags; int arc_cdb_size; int smid; int cdb_phyaddr_low; int cdb_phyaddr_high; int srb_state; int arcmsr_cdb; } ;
struct TYPE_3__ {int phyadd_high; } ;
struct TYPE_4__ {TYPE_1__ B; } ;
struct AdapterControlBlock {int adapter_type; int postDone_lock; scalar_t__ pmu; TYPE_2__ srb_phyaddr; int srboutstandingcount; int srb_dmamap; int srb_dmat; } ;
struct ARCMSR_CDB {int Flags; int Context; } ;







 int ARCMSR_CDB_FLAG_SGL_BSIZE ;
 int ARCMSR_DRV2IOP_CDB_POSTED ;
 int ARCMSR_LOCK_ACQUIRE (int *) ;
 int ARCMSR_LOCK_RELEASE (int *) ;
 int ARCMSR_MAX_HBB_POSTQUEUE ;
 int ARCMSR_MAX_HBD_POSTQUEUE ;
 int ARCMSR_SRBPOST_FLAG_SGL_BSIZE ;
 int ARCMSR_SRB_START ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CHIP_REG_WRITE32 (int ,int ,int ,int) ;
 int HBA_MessageUnit ;
 int HBC_MessageUnit ;
 int HBD_MessageUnit ;
 int HBE_MessageUnit ;
 int SRB_FLAG_WRITE ;
 int WRITE_CHIP_REG32 (int ,int ,int ) ;
 int atomic_add_int (int *,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int inbound_queueport ;
 int inbound_queueport_high ;
 int inbound_queueport_low ;
 int inboundlist_write_pointer ;

__attribute__((used)) static void arcmsr_post_srb(struct AdapterControlBlock *acb, struct CommandControlBlock *srb)
{
 u_int32_t cdb_phyaddr_low = (u_int32_t) srb->cdb_phyaddr_low;
 struct ARCMSR_CDB *arcmsr_cdb = (struct ARCMSR_CDB *)&srb->arcmsr_cdb;

 bus_dmamap_sync(acb->srb_dmat, acb->srb_dmamap, (srb->srb_flags & SRB_FLAG_WRITE) ? BUS_DMASYNC_POSTWRITE:BUS_DMASYNC_POSTREAD);
 atomic_add_int(&acb->srboutstandingcount, 1);
 srb->srb_state = ARCMSR_SRB_START;

 switch (acb->adapter_type) {
 case 132: {
   if(arcmsr_cdb->Flags & ARCMSR_CDB_FLAG_SGL_BSIZE) {
    CHIP_REG_WRITE32(HBA_MessageUnit, 0, inbound_queueport, cdb_phyaddr_low|ARCMSR_SRBPOST_FLAG_SGL_BSIZE);
   } else {
    CHIP_REG_WRITE32(HBA_MessageUnit, 0, inbound_queueport, cdb_phyaddr_low);
   }
  }
  break;
 case 131: {
   struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;
   int ending_index, index;

   index = phbbmu->postq_index;
   ending_index = ((index+1) % ARCMSR_MAX_HBB_POSTQUEUE);
   phbbmu->post_qbuffer[ending_index] = 0;
   if(arcmsr_cdb->Flags & ARCMSR_CDB_FLAG_SGL_BSIZE) {
    phbbmu->post_qbuffer[index] = cdb_phyaddr_low | ARCMSR_SRBPOST_FLAG_SGL_BSIZE;
   } else {
    phbbmu->post_qbuffer[index] = cdb_phyaddr_low;
   }
   index++;
   index %= ARCMSR_MAX_HBB_POSTQUEUE;
   phbbmu->postq_index = index;
   WRITE_CHIP_REG32(0, phbbmu->drv2iop_doorbell, ARCMSR_DRV2IOP_CDB_POSTED);
  }
  break;
 case 130: {
   u_int32_t ccb_post_stamp, arc_cdb_size, cdb_phyaddr_hi32;

   arc_cdb_size = (srb->arc_cdb_size > 0x300) ? 0x300 : srb->arc_cdb_size;
   ccb_post_stamp = (cdb_phyaddr_low | ((arc_cdb_size-1) >> 6) | 1);
   cdb_phyaddr_hi32 = acb->srb_phyaddr.B.phyadd_high;
   if(cdb_phyaddr_hi32)
   {
    CHIP_REG_WRITE32(HBC_MessageUnit,0,inbound_queueport_high, cdb_phyaddr_hi32);
    CHIP_REG_WRITE32(HBC_MessageUnit,0,inbound_queueport_low, ccb_post_stamp);
   }
   else
   {
    CHIP_REG_WRITE32(HBC_MessageUnit,0,inbound_queueport_low, ccb_post_stamp);
   }
  }
  break;
 case 129: {
   struct HBD_MessageUnit0 *phbdmu = (struct HBD_MessageUnit0 *)acb->pmu;
   u_int16_t index_stripped;
   u_int16_t postq_index;
   struct InBound_SRB *pinbound_srb;

   ARCMSR_LOCK_ACQUIRE(&acb->postDone_lock);
   postq_index = phbdmu->postq_index;
   pinbound_srb = (struct InBound_SRB *)&phbdmu->post_qbuffer[postq_index & 0xFF];
   pinbound_srb->addressHigh = srb->cdb_phyaddr_high;
   pinbound_srb->addressLow = srb->cdb_phyaddr_low;
   pinbound_srb->length = srb->arc_cdb_size >> 2;
   arcmsr_cdb->Context = srb->cdb_phyaddr_low;
   if (postq_index & 0x4000) {
    index_stripped = postq_index & 0xFF;
    index_stripped += 1;
    index_stripped %= ARCMSR_MAX_HBD_POSTQUEUE;
    phbdmu->postq_index = index_stripped ? (index_stripped | 0x4000) : index_stripped;
   } else {
    index_stripped = postq_index;
    index_stripped += 1;
    index_stripped %= ARCMSR_MAX_HBD_POSTQUEUE;
    phbdmu->postq_index = index_stripped ? index_stripped : (index_stripped | 0x4000);
   }
   CHIP_REG_WRITE32(HBD_MessageUnit, 0, inboundlist_write_pointer, postq_index);
   ARCMSR_LOCK_RELEASE(&acb->postDone_lock);
  }
  break;
 case 128: {
   u_int32_t ccb_post_stamp, arc_cdb_size;

   arc_cdb_size = (srb->arc_cdb_size > 0x300) ? 0x300 : srb->arc_cdb_size;
   ccb_post_stamp = (srb->smid | ((arc_cdb_size-1) >> 6));
   CHIP_REG_WRITE32(HBE_MessageUnit, 0, inbound_queueport_high, 0);
   CHIP_REG_WRITE32(HBE_MessageUnit, 0, inbound_queueport_low, ccb_post_stamp);
         }
  break;
 }
}
