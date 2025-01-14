
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct scsi_device {scalar_t__ scsi_level; scalar_t__ no_report_opcodes; } ;


 int DMA_FROM_DEVICE ;
 int EINVAL ;
 int HZ ;
 scalar_t__ ILLEGAL_REQUEST ;
 unsigned char MAINTENANCE_IN ;
 unsigned char MI_REPORT_SUPPORTED_OPERATION_CODES ;
 scalar_t__ SCSI_SPC_3 ;
 int memset (unsigned char*,int ,unsigned int) ;
 int put_unaligned_be32 (unsigned int,unsigned char*) ;
 int scsi_execute_req (struct scsi_device*,unsigned char*,int ,unsigned char*,unsigned int,struct scsi_sense_hdr*,int,int,int *) ;
 scalar_t__ scsi_sense_valid (struct scsi_sense_hdr*) ;

int scsi_report_opcode(struct scsi_device *sdev, unsigned char *buffer,
         unsigned int len, unsigned char opcode)
{
 unsigned char cmd[16];
 struct scsi_sense_hdr sshdr;
 int result;

 if (sdev->no_report_opcodes || sdev->scsi_level < SCSI_SPC_3)
  return -EINVAL;

 memset(cmd, 0, 16);
 cmd[0] = MAINTENANCE_IN;
 cmd[1] = MI_REPORT_SUPPORTED_OPERATION_CODES;
 cmd[2] = 1;
 cmd[3] = opcode;
 put_unaligned_be32(len, &cmd[6]);
 memset(buffer, 0, len);

 result = scsi_execute_req(sdev, cmd, DMA_FROM_DEVICE, buffer, len,
      &sshdr, 30 * HZ, 3, ((void*)0));

 if (result && scsi_sense_valid(&sshdr) &&
     sshdr.sense_key == ILLEGAL_REQUEST &&
     (sshdr.asc == 0x20 || sshdr.asc == 0x24) && sshdr.ascq == 0x00)
  return -EINVAL;

 if ((buffer[1] & 3) == 3)
  return 1;

 return 0;
}
