
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_sense_hdr {int sense_key; int asc; int ascq; } ;


 int scsi_normalize_sense (int const*,int,struct scsi_sense_hdr*) ;

__attribute__((used)) static void decode_sense_data(const u8 *sense_data, int sense_data_len,
   u8 *sense_key, u8 *asc, u8 *ascq)
{
 struct scsi_sense_hdr sshdr;
 bool rc;

 *sense_key = -1;
 *asc = -1;
 *ascq = -1;

 if (sense_data_len < 1)
  return;

 rc = scsi_normalize_sense(sense_data, sense_data_len, &sshdr);
 if (rc) {
  *sense_key = sshdr.sense_key;
  *asc = sshdr.asc;
  *ascq = sshdr.ascq;
 }
}
