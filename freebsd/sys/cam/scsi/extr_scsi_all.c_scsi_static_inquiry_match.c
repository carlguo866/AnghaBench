
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_static_inquiry_pattern {scalar_t__ type; int media_type; int revision; int product; int vendor; } ;
struct scsi_inquiry_data {int revision; int product; int vendor; } ;
typedef scalar_t__ caddr_t ;


 scalar_t__ SID_IS_REMOVABLE (struct scsi_inquiry_data*) ;
 scalar_t__ SID_TYPE (struct scsi_inquiry_data*) ;
 int SIP_MEDIA_FIXED ;
 int SIP_MEDIA_REMOVABLE ;
 scalar_t__ T_ANY ;
 scalar_t__ cam_strmatch (int ,int ,int) ;

int
scsi_static_inquiry_match(caddr_t inqbuffer, caddr_t table_entry)
{
 struct scsi_static_inquiry_pattern *entry;
 struct scsi_inquiry_data *inq;

 entry = (struct scsi_static_inquiry_pattern *)table_entry;
 inq = (struct scsi_inquiry_data *)inqbuffer;

 if (((SID_TYPE(inq) == entry->type)
   || (entry->type == T_ANY))
  && (SID_IS_REMOVABLE(inq) ? entry->media_type & SIP_MEDIA_REMOVABLE
       : entry->media_type & SIP_MEDIA_FIXED)
  && (cam_strmatch(inq->vendor, entry->vendor, sizeof(inq->vendor)) == 0)
  && (cam_strmatch(inq->product, entry->product,
     sizeof(inq->product)) == 0)
  && (cam_strmatch(inq->revision, entry->revision,
     sizeof(inq->revision)) == 0)) {
  return (0);
 }
        return (-1);
}
