
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int path; } ;
struct TYPE_4__ {int flags; } ;
struct ccb_scsiio {size_t dxfer_len; scalar_t__ scsi_status; size_t resid; TYPE_2__ ccb_h; scalar_t__ data_ptr; } ;
union ccb {TYPE_1__ ccb_h; struct ccb_scsiio csio; } ;
struct iscsi_session {int dummy; } ;
struct iscsi_outstanding {size_t io_received; union ccb* io_ccb; } ;
struct iscsi_bhs_data_in {int bhsdi_flags; scalar_t__ bhsdi_status; int bhsdi_residual_count; int bhsdi_buffer_offset; int bhsdi_initiator_task_tag; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;


 int BHSDI_FLAGS_S ;
 int CAM_DEV_QFRZN ;
 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 int CAM_REQ_CMP ;
 int CAM_SCSI_STATUS_ERROR ;
 int ISCSI_SESSION_DEBUG (struct iscsi_session*,char*) ;
 int ISCSI_SESSION_UNLOCK (struct iscsi_session*) ;
 int ISCSI_SESSION_WARN (struct iscsi_session*,char*,size_t,...) ;
 int KASSERT (int,char*) ;
 struct iscsi_session* PDU_SESSION (struct icl_pdu*) ;
 size_t icl_pdu_data_segment_length (struct icl_pdu*) ;
 int icl_pdu_free (struct icl_pdu*) ;
 int icl_pdu_get_data (struct icl_pdu*,int ,scalar_t__,size_t) ;
 struct iscsi_outstanding* iscsi_outstanding_find (struct iscsi_session*,int ) ;
 int iscsi_outstanding_remove (struct iscsi_session*,struct iscsi_outstanding*) ;
 int iscsi_session_reconnect (struct iscsi_session*) ;
 size_t ntohl (int ) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_devq (int ,int) ;

__attribute__((used)) static void
iscsi_pdu_handle_data_in(struct icl_pdu *response)
{
 struct iscsi_bhs_data_in *bhsdi;
 struct iscsi_outstanding *io;
 struct iscsi_session *is;
 union ccb *ccb;
 struct ccb_scsiio *csio;
 size_t data_segment_len, received, oreceived;

 is = PDU_SESSION(response);
 bhsdi = (struct iscsi_bhs_data_in *)response->ip_bhs;
 io = iscsi_outstanding_find(is, bhsdi->bhsdi_initiator_task_tag);
 if (io == ((void*)0) || io->io_ccb == ((void*)0)) {
  ISCSI_SESSION_WARN(is, "bad itt 0x%x", bhsdi->bhsdi_initiator_task_tag);
  icl_pdu_free(response);
  iscsi_session_reconnect(is);
  ISCSI_SESSION_UNLOCK(is);
  return;
 }

 data_segment_len = icl_pdu_data_segment_length(response);
 if (data_segment_len == 0) {





  ISCSI_SESSION_UNLOCK(is);
  icl_pdu_free(response);
  return;
 }






 if (ntohl(bhsdi->bhsdi_buffer_offset) != io->io_received) {
  ISCSI_SESSION_WARN(is, "data out of order; expected offset %zd, got %zd",
      io->io_received, (size_t)ntohl(bhsdi->bhsdi_buffer_offset));
  icl_pdu_free(response);
  iscsi_session_reconnect(is);
  ISCSI_SESSION_UNLOCK(is);
  return;
 }

 ccb = io->io_ccb;
 csio = &ccb->csio;

 if (io->io_received + data_segment_len > csio->dxfer_len) {
  ISCSI_SESSION_WARN(is, "oversize data segment (%zd bytes "
      "at offset %zd, buffer is %d)",
      data_segment_len, io->io_received, csio->dxfer_len);
  icl_pdu_free(response);
  iscsi_session_reconnect(is);
  ISCSI_SESSION_UNLOCK(is);
  return;
 }

 oreceived = io->io_received;
 io->io_received += data_segment_len;
 received = io->io_received;
 if ((bhsdi->bhsdi_flags & BHSDI_FLAGS_S) != 0)
  iscsi_outstanding_remove(is, io);
 ISCSI_SESSION_UNLOCK(is);

 icl_pdu_get_data(response, 0, csio->data_ptr + oreceived, data_segment_len);





 if ((bhsdi->bhsdi_flags & BHSDI_FLAGS_S) == 0) {



  icl_pdu_free(response);
  return;
 }


 if (bhsdi->bhsdi_status == 0) {
  ccb->ccb_h.status = CAM_REQ_CMP;
 } else {
  if ((ccb->ccb_h.status & CAM_DEV_QFRZN) == 0) {
   xpt_freeze_devq(ccb->ccb_h.path, 1);
   ISCSI_SESSION_DEBUG(is, "freezing devq");
  }
  ccb->ccb_h.status = CAM_SCSI_STATUS_ERROR | CAM_DEV_QFRZN;
  csio->scsi_status = bhsdi->bhsdi_status;
 }

 if ((csio->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN) {
  KASSERT(received <= csio->dxfer_len,
      ("received > csio->dxfer_len"));
  if (received < csio->dxfer_len) {
   csio->resid = ntohl(bhsdi->bhsdi_residual_count);
   if (csio->resid != csio->dxfer_len - received) {
    ISCSI_SESSION_WARN(is, "underflow mismatch: "
        "target indicates %d, we calculated %zd",
        csio->resid, csio->dxfer_len - received);
   }
   csio->resid = csio->dxfer_len - received;
  }
 }

 xpt_done(ccb);
 icl_pdu_free(response);
}
