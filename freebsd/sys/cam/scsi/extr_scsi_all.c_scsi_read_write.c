
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
typedef int u_int64_t ;
typedef int u_int32_t ;
struct scsi_rw_6 {int length; int * addr; scalar_t__ control; int opcode; } ;
struct scsi_rw_16 {scalar_t__ control; int * length; scalar_t__ reserved; int addr; scalar_t__ byte2; int opcode; } ;
struct scsi_rw_12 {int * length; int * addr; scalar_t__ control; scalar_t__ reserved; scalar_t__ byte2; int opcode; } ;
struct scsi_rw_10 {int * length; int * addr; scalar_t__ control; scalar_t__ reserved; scalar_t__ byte2; int opcode; } ;
struct TYPE_4__ {int cdb_bytes; } ;
struct TYPE_3__ {int path; } ;
struct ccb_scsiio {TYPE_2__ cdb_io; TYPE_1__ ccb_h; } ;


 int CAM_DATA_BIO ;
 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_SUBTRACE ;
 int CAM_DIR_IN ;
 int CAM_DIR_OUT ;
 int READ_10 ;
 int READ_12 ;
 int READ_16 ;
 int READ_6 ;
 int SCSI_RW_BIO ;
 int SCSI_RW_DIRMASK ;
 int SCSI_RW_READ ;
 int WRITE_10 ;
 int WRITE_12 ;
 int WRITE_16 ;
 int WRITE_6 ;
 int cam_fill_csio (struct ccb_scsiio*,int,void (*) (struct cam_periph*,union ccb*),int,scalar_t__,scalar_t__*,int,scalar_t__,scalar_t__,int) ;
 int scsi_u64to8b (int,int ) ;
 int scsi_ulto2b (int,int *) ;
 int scsi_ulto3b (int,int *) ;
 int scsi_ulto4b (int,int *) ;

void
scsi_read_write(struct ccb_scsiio *csio, u_int32_t retries,
  void (*cbfcnp)(struct cam_periph *, union ccb *),
  u_int8_t tag_action, int readop, u_int8_t byte2,
  int minimum_cmd_size, u_int64_t lba, u_int32_t block_count,
  u_int8_t *data_ptr, u_int32_t dxfer_len, u_int8_t sense_len,
  u_int32_t timeout)
{
 int read;
 u_int8_t cdb_len;

 read = (readop & SCSI_RW_DIRMASK) == SCSI_RW_READ;







 if ((minimum_cmd_size < 10)
  && ((lba & 0x1fffff) == lba)
  && ((block_count & 0xff) == block_count)
  && (byte2 == 0)) {



  struct scsi_rw_6 *scsi_cmd;

  scsi_cmd = (struct scsi_rw_6 *)&csio->cdb_io.cdb_bytes;
  scsi_cmd->opcode = read ? READ_6 : WRITE_6;
  scsi_ulto3b(lba, scsi_cmd->addr);
  scsi_cmd->length = block_count & 0xff;
  scsi_cmd->control = 0;
  cdb_len = sizeof(*scsi_cmd);

  CAM_DEBUG(csio->ccb_h.path, CAM_DEBUG_SUBTRACE,
     ("6byte: %x%x%x:%d:%d\n", scsi_cmd->addr[0],
      scsi_cmd->addr[1], scsi_cmd->addr[2],
      scsi_cmd->length, dxfer_len));
 } else if ((minimum_cmd_size < 12)
  && ((block_count & 0xffff) == block_count)
  && ((lba & 0xffffffff) == lba)) {



  struct scsi_rw_10 *scsi_cmd;

  scsi_cmd = (struct scsi_rw_10 *)&csio->cdb_io.cdb_bytes;
  scsi_cmd->opcode = read ? READ_10 : WRITE_10;
  scsi_cmd->byte2 = byte2;
  scsi_ulto4b(lba, scsi_cmd->addr);
  scsi_cmd->reserved = 0;
  scsi_ulto2b(block_count, scsi_cmd->length);
  scsi_cmd->control = 0;
  cdb_len = sizeof(*scsi_cmd);

  CAM_DEBUG(csio->ccb_h.path, CAM_DEBUG_SUBTRACE,
     ("10byte: %x%x%x%x:%x%x: %d\n", scsi_cmd->addr[0],
      scsi_cmd->addr[1], scsi_cmd->addr[2],
      scsi_cmd->addr[3], scsi_cmd->length[0],
      scsi_cmd->length[1], dxfer_len));
 } else if ((minimum_cmd_size < 16)
  && ((block_count & 0xffffffff) == block_count)
  && ((lba & 0xffffffff) == lba)) {




  struct scsi_rw_12 *scsi_cmd;

  scsi_cmd = (struct scsi_rw_12 *)&csio->cdb_io.cdb_bytes;
  scsi_cmd->opcode = read ? READ_12 : WRITE_12;
  scsi_cmd->byte2 = byte2;
  scsi_ulto4b(lba, scsi_cmd->addr);
  scsi_cmd->reserved = 0;
  scsi_ulto4b(block_count, scsi_cmd->length);
  scsi_cmd->control = 0;
  cdb_len = sizeof(*scsi_cmd);

  CAM_DEBUG(csio->ccb_h.path, CAM_DEBUG_SUBTRACE,
     ("12byte: %x%x%x%x:%x%x%x%x: %d\n", scsi_cmd->addr[0],
      scsi_cmd->addr[1], scsi_cmd->addr[2],
      scsi_cmd->addr[3], scsi_cmd->length[0],
      scsi_cmd->length[1], scsi_cmd->length[2],
      scsi_cmd->length[3], dxfer_len));
 } else {




  struct scsi_rw_16 *scsi_cmd;

  scsi_cmd = (struct scsi_rw_16 *)&csio->cdb_io.cdb_bytes;
  scsi_cmd->opcode = read ? READ_16 : WRITE_16;
  scsi_cmd->byte2 = byte2;
  scsi_u64to8b(lba, scsi_cmd->addr);
  scsi_cmd->reserved = 0;
  scsi_ulto4b(block_count, scsi_cmd->length);
  scsi_cmd->control = 0;
  cdb_len = sizeof(*scsi_cmd);
 }
 cam_fill_csio(csio,
        retries,
        cbfcnp,
        (read ? CAM_DIR_IN : CAM_DIR_OUT) |
        ((readop & SCSI_RW_BIO) != 0 ? CAM_DATA_BIO : 0),
        tag_action,
        data_ptr,
        dxfer_len,
        sense_len,
        cdb_len,
        timeout);
}
