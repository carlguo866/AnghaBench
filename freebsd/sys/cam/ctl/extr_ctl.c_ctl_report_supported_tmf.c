
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
struct scsi_report_supported_tmf_ext_data {int byte1; int byte2; int length; } ;
struct scsi_report_supported_tmf_data {int dummy; } ;
struct scsi_report_supported_tmf {int options; int length; } ;
struct TYPE_2__ {int flags; } ;
struct ctl_scsiio {int be_move_done; TYPE_1__ io_hdr; scalar_t__ kern_data_ptr; int kern_data_len; int kern_total_len; scalar_t__ kern_rel_offset; scalar_t__ kern_sg_entries; scalar_t__ cdb; } ;


 int CTL_DEBUG_PRINT (char*) ;
 int CTL_FLAG_ALLOCATED ;
 int CTL_RETVAL_COMPLETE ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int RST_ATS ;
 int RST_ATSS ;
 int RST_CTSS ;
 int RST_ITNRS ;
 int RST_LURS ;
 int RST_QAES ;
 int RST_QTS ;
 int RST_QTSS ;
 int RST_REPD ;
 int RST_TRS ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 scalar_t__ malloc (int,int ,int) ;
 int min (int,int) ;
 int scsi_4btoul (int ) ;

int
ctl_report_supported_tmf(struct ctl_scsiio *ctsio)
{
 struct scsi_report_supported_tmf *cdb;
 struct scsi_report_supported_tmf_ext_data *data;
 int retval;
 int alloc_len, total_len;

 CTL_DEBUG_PRINT(("ctl_report_supported_tmf\n"));

 cdb = (struct scsi_report_supported_tmf *)ctsio->cdb;

 retval = CTL_RETVAL_COMPLETE;

 if (cdb->options & RST_REPD)
  total_len = sizeof(struct scsi_report_supported_tmf_ext_data);
 else
  total_len = sizeof(struct scsi_report_supported_tmf_data);
 alloc_len = scsi_4btoul(cdb->length);

 ctsio->kern_data_ptr = malloc(total_len, M_CTL, M_WAITOK | M_ZERO);
 ctsio->kern_sg_entries = 0;
 ctsio->kern_rel_offset = 0;
 ctsio->kern_data_len = min(total_len, alloc_len);
 ctsio->kern_total_len = ctsio->kern_data_len;

 data = (struct scsi_report_supported_tmf_ext_data *)ctsio->kern_data_ptr;
 data->byte1 |= RST_ATS | RST_ATSS | RST_CTSS | RST_LURS | RST_QTS |
     RST_TRS;
 data->byte2 |= RST_QAES | RST_QTSS | RST_ITNRS;
 data->length = total_len - 4;

 ctl_set_success(ctsio);
 ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
 ctsio->be_move_done = ctl_config_move_done;
 ctl_datamove((union ctl_io *)ctsio);
 return (retval);
}
