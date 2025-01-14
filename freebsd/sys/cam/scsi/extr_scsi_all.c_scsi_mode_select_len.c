
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_mode_select_6 {int length; int byte2; int opcode; } ;
struct scsi_mode_select_10 {int length; int byte2; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_OUT ;
 int MODE_SELECT_10 ;
 int MODE_SELECT_6 ;
 int SMS_PF ;
 int SMS_SP ;
 int bzero (struct scsi_mode_select_6*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int,void (*) (struct cam_periph*,union ccb*),int ,int,int*,int,int,int,int) ;
 int scsi_ulto2b (int,int) ;

void
scsi_mode_select_len(struct ccb_scsiio *csio, u_int32_t retries,
       void (*cbfcnp)(struct cam_periph *, union ccb *),
       u_int8_t tag_action, int scsi_page_fmt, int save_pages,
       u_int8_t *param_buf, u_int32_t param_len,
       int minimum_cmd_size, u_int8_t sense_len,
       u_int32_t timeout)
{
 u_int8_t cdb_len;




 if ((param_len < 256)
  && (minimum_cmd_size < 10)) {



  struct scsi_mode_select_6 *scsi_cmd;

  scsi_cmd = (struct scsi_mode_select_6 *)&csio->cdb_io.cdb_bytes;
  bzero(scsi_cmd, sizeof(*scsi_cmd));
  scsi_cmd->opcode = MODE_SELECT_6;
  if (scsi_page_fmt != 0)
   scsi_cmd->byte2 |= SMS_PF;
  if (save_pages != 0)
   scsi_cmd->byte2 |= SMS_SP;
  scsi_cmd->length = param_len;
  cdb_len = sizeof(*scsi_cmd);
 } else {



  struct scsi_mode_select_10 *scsi_cmd;

  scsi_cmd =
      (struct scsi_mode_select_10 *)&csio->cdb_io.cdb_bytes;
  bzero(scsi_cmd, sizeof(*scsi_cmd));
  scsi_cmd->opcode = MODE_SELECT_10;
  if (scsi_page_fmt != 0)
   scsi_cmd->byte2 |= SMS_PF;
  if (save_pages != 0)
   scsi_cmd->byte2 |= SMS_SP;
  scsi_ulto2b(param_len, scsi_cmd->length);
  cdb_len = sizeof(*scsi_cmd);
 }
 cam_fill_csio(csio,
        retries,
        cbfcnp,
        CAM_DIR_OUT,
        tag_action,
        param_buf,
        param_len,
        sense_len,
        cdb_len,
        timeout);
}
