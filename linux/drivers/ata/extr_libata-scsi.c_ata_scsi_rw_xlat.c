
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct scsi_cmnd {int* cmnd; int cmd_len; int result; TYPE_1__* device; struct request* request; } ;
struct request {int dummy; } ;
struct ata_queued_cmd {int nbytes; int dev; int hw_tag; int tf; int flags; struct scsi_cmnd* scsicmd; } ;
struct TYPE_2__ {int sector_size; } ;


 int ATA_QCFLAG_IO ;
 unsigned int ATA_TFLAG_FUA ;
 unsigned int ATA_TFLAG_WRITE ;
 int DPRINTK (char*) ;
 int ERANGE ;
 int ILLEGAL_REQUEST ;
 int IOPRIO_PRIO_CLASS (int ) ;



 int SAM_STAT_GOOD ;



 int ata_build_rw_tf (int *,int ,int ,int,unsigned int,int ,int) ;
 int ata_check_nblocks (struct scsi_cmnd*,int) ;
 int ata_scsi_set_invalid_field (int ,struct scsi_cmnd*,int,int) ;
 int ata_scsi_set_sense (int ,struct scsi_cmnd*,int ,int,int) ;
 scalar_t__ likely (int) ;
 int req_get_ioprio (struct request*) ;
 int scsi_10_lba_len (int const*,int *,int*) ;
 int scsi_16_lba_len (int const*,int *,int*) ;
 int scsi_6_lba_len (int const*,int *,int*) ;
 int unlikely (int) ;

__attribute__((used)) static unsigned int ata_scsi_rw_xlat(struct ata_queued_cmd *qc)
{
 struct scsi_cmnd *scmd = qc->scsicmd;
 const u8 *cdb = scmd->cmnd;
 struct request *rq = scmd->request;
 int class = IOPRIO_PRIO_CLASS(req_get_ioprio(rq));
 unsigned int tf_flags = 0;
 u64 block;
 u32 n_block;
 int rc;
 u16 fp = 0;

 if (cdb[0] == 130 || cdb[0] == 128 || cdb[0] == 129)
  tf_flags |= ATA_TFLAG_WRITE;


 switch (cdb[0]) {
 case 133:
 case 130:
  if (unlikely(scmd->cmd_len < 10)) {
   fp = 9;
   goto invalid_fld;
  }
  scsi_10_lba_len(cdb, &block, &n_block);
  if (cdb[1] & (1 << 3))
   tf_flags |= ATA_TFLAG_FUA;
  if (!ata_check_nblocks(scmd, n_block))
   goto invalid_fld;
  break;
 case 131:
 case 128:
  if (unlikely(scmd->cmd_len < 6)) {
   fp = 5;
   goto invalid_fld;
  }
  scsi_6_lba_len(cdb, &block, &n_block);




  if (!n_block)
   n_block = 256;
  if (!ata_check_nblocks(scmd, n_block))
   goto invalid_fld;
  break;
 case 132:
 case 129:
  if (unlikely(scmd->cmd_len < 16)) {
   fp = 15;
   goto invalid_fld;
  }
  scsi_16_lba_len(cdb, &block, &n_block);
  if (cdb[1] & (1 << 3))
   tf_flags |= ATA_TFLAG_FUA;
  if (!ata_check_nblocks(scmd, n_block))
   goto invalid_fld;
  break;
 default:
  DPRINTK("no-byte command\n");
  fp = 0;
  goto invalid_fld;
 }


 if (!n_block)







  goto nothing_to_do;

 qc->flags |= ATA_QCFLAG_IO;
 qc->nbytes = n_block * scmd->device->sector_size;

 rc = ata_build_rw_tf(&qc->tf, qc->dev, block, n_block, tf_flags,
        qc->hw_tag, class);

 if (likely(rc == 0))
  return 0;

 if (rc == -ERANGE)
  goto out_of_range;

invalid_fld:
 ata_scsi_set_invalid_field(qc->dev, scmd, fp, 0xff);
 return 1;

out_of_range:
 ata_scsi_set_sense(qc->dev, scmd, ILLEGAL_REQUEST, 0x21, 0x0);

 return 1;

nothing_to_do:
 scmd->result = SAM_STAT_GOOD;
 return 1;
}
