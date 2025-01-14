
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct scsi_inquiry_data {int device; int revision; int product; int vendor; } ;
struct ciss_softc {struct ciss_ldrive** ciss_logical; TYPE_3__* ciss_id; } ;
struct ciss_ldrive {TYPE_5__* cl_lstatus; TYPE_4__* cl_ldrive; } ;
struct TYPE_7__ {int flags; int target_id; int path; } ;
struct TYPE_6__ {int* cdb_bytes; scalar_t__ cdb_ptr; } ;
struct ccb_scsiio {scalar_t__ dxfer_len; TYPE_2__ ccb_h; scalar_t__ data_ptr; TYPE_1__ cdb_io; } ;
struct TYPE_10__ {int status; } ;
struct TYPE_9__ {int fault_tolerance; } ;
struct TYPE_8__ {int PowerUPNvramFlags; } ;


 int CAM_CDB_POINTER ;
 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 scalar_t__ CISS_IS_PHYSICAL (int) ;
 int INQUIRY ;
 int PWR_UP_FLAG_JBOD_ENABLED ;
 scalar_t__ SHORT_INQUIRY_LENGTH ;
 int SID_PRODUCT_SIZE ;
 int SID_REVISION_SIZE ;
 scalar_t__ SID_TYPE (struct scsi_inquiry_data*) ;
 int SID_VENDOR_SIZE ;
 int SI_EVPD ;
 scalar_t__ T_DIRECT ;
 int T_NODEVICE ;
 int cam_sim_bus (int ) ;
 char* ciss_name_ldrive_org (int ) ;
 char* ciss_name_ldrive_status (int ) ;
 int padstr (int ,char*,int ) ;
 int xpt_path_sim (int ) ;

__attribute__((used)) static void
ciss_cam_complete_fixup(struct ciss_softc *sc, struct ccb_scsiio *csio)
{
    struct scsi_inquiry_data *inq;
    struct ciss_ldrive *cl;
    uint8_t *cdb;
    int bus, target;

    cdb = (csio->ccb_h.flags & CAM_CDB_POINTER) ?
  (uint8_t *)csio->cdb_io.cdb_ptr : csio->cdb_io.cdb_bytes;
    if (cdb[0] == INQUIRY &&
 (cdb[1] & SI_EVPD) == 0 &&
 (csio->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN &&
 csio->dxfer_len >= SHORT_INQUIRY_LENGTH) {

 inq = (struct scsi_inquiry_data *)csio->data_ptr;
 target = csio->ccb_h.target_id;
 bus = cam_sim_bus(xpt_path_sim(csio->ccb_h.path));







 if( !(sc->ciss_id->PowerUPNvramFlags & PWR_UP_FLAG_JBOD_ENABLED)){
  if (CISS_IS_PHYSICAL(bus)) {
       if (SID_TYPE(inq) == T_DIRECT)
    inq->device = (inq->device & 0xe0) | T_NODEVICE;
       return;
  }
  cl = &sc->ciss_logical[bus][target];

  padstr(inq->vendor, "HP",
          SID_VENDOR_SIZE);
  padstr(inq->product,
          ciss_name_ldrive_org(cl->cl_ldrive->fault_tolerance),
          SID_PRODUCT_SIZE);
  padstr(inq->revision,
          ciss_name_ldrive_status(cl->cl_lstatus->status),
          SID_REVISION_SIZE);
 }
    }
}
