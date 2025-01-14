
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int response_code; int sense_key; } ;


 size_t scnprintf (char*,size_t,char*,...) ;
 scalar_t__ scsi_sense_is_deferred (struct scsi_sense_hdr const*) ;
 char* scsi_sense_key_string (int ) ;

__attribute__((used)) static size_t
scsi_format_sense_hdr(char *buffer, size_t buf_len,
        const struct scsi_sense_hdr *sshdr)
{
 const char *sense_txt;
 size_t off;

 off = scnprintf(buffer, buf_len, "Sense Key : ");
 sense_txt = scsi_sense_key_string(sshdr->sense_key);
 if (sense_txt)
  off += scnprintf(buffer + off, buf_len - off,
     "%s ", sense_txt);
 else
  off += scnprintf(buffer + off, buf_len - off,
     "0x%x ", sshdr->sense_key);
 off += scnprintf(buffer + off, buf_len - off,
  scsi_sense_is_deferred(sshdr) ? "[deferred] " : "[current] ");

 if (sshdr->response_code >= 0x72)
  off += scnprintf(buffer + off, buf_len - off, "[descriptor] ");
 return off;
}
