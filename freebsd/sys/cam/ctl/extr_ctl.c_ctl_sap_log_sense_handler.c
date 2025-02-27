
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_15__ {int param_len; int param_code; } ;
struct TYPE_16__ {int integer; int exponent; TYPE_7__ hdr; } ;
struct TYPE_13__ {int param_len; void* param_control; int param_code; } ;
struct TYPE_14__ {TYPE_5__ hdr; int idle_int; } ;
struct TYPE_9__ {int param_len; void* param_control; int param_code; } ;
struct TYPE_12__ {int weighted_int; int weighted_num; int write_int; int read_int; int transmitted_lba; int recvieved_lba; int write_num; int read_num; TYPE_1__ hdr; } ;
struct stat_page {TYPE_8__ ti; TYPE_6__ it; TYPE_4__ sap; } ;
struct scsi_log_time_interval {int dummy; } ;
struct scsi_log_stat_and_perf {int dummy; } ;
struct scsi_log_param_header {int dummy; } ;
struct scsi_log_idle_time {int dummy; } ;
struct ctl_scsiio {int dummy; } ;
struct ctl_page_index {scalar_t__ page_data; } ;
struct TYPE_11__ {int* operations; int* bytes; struct bintime* time; } ;
struct ctl_lun {int idle_time; TYPE_3__ stats; TYPE_2__* be_lun; } ;
struct bintime {int frac; scalar_t__ sec; } ;
struct TYPE_10__ {int blocksize; } ;


 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 size_t CTL_STATS_READ ;
 size_t CTL_STATS_WRITE ;
 int SBT_1MS ;
 int SLP_IT ;
 void* SLP_LBIN ;
 int SLP_SAP ;
 int SLP_TI ;
 int UINT64_MAX ;
 int scsi_u64to8b (int,int ) ;
 int scsi_ulto2b (int ,int ) ;
 int scsi_ulto4b (int,int ) ;

int
ctl_sap_log_sense_handler(struct ctl_scsiio *ctsio,
          struct ctl_page_index *page_index,
          int pc)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct stat_page *data;
 struct bintime *t;

 data = (struct stat_page *)page_index->page_data;

 scsi_ulto2b(SLP_SAP, data->sap.hdr.param_code);
 data->sap.hdr.param_control = SLP_LBIN;
 data->sap.hdr.param_len = sizeof(struct scsi_log_stat_and_perf) -
     sizeof(struct scsi_log_param_header);
 scsi_u64to8b(lun->stats.operations[CTL_STATS_READ],
     data->sap.read_num);
 scsi_u64to8b(lun->stats.operations[CTL_STATS_WRITE],
     data->sap.write_num);
 if (lun->be_lun->blocksize > 0) {
  scsi_u64to8b(lun->stats.bytes[CTL_STATS_WRITE] /
      lun->be_lun->blocksize, data->sap.recvieved_lba);
  scsi_u64to8b(lun->stats.bytes[CTL_STATS_READ] /
      lun->be_lun->blocksize, data->sap.transmitted_lba);
 }
 t = &lun->stats.time[CTL_STATS_READ];
 scsi_u64to8b((uint64_t)t->sec * 1000 + t->frac / (UINT64_MAX / 1000),
     data->sap.read_int);
 t = &lun->stats.time[CTL_STATS_WRITE];
 scsi_u64to8b((uint64_t)t->sec * 1000 + t->frac / (UINT64_MAX / 1000),
     data->sap.write_int);
 scsi_u64to8b(0, data->sap.weighted_num);
 scsi_u64to8b(0, data->sap.weighted_int);
 scsi_ulto2b(SLP_IT, data->it.hdr.param_code);
 data->it.hdr.param_control = SLP_LBIN;
 data->it.hdr.param_len = sizeof(struct scsi_log_idle_time) -
     sizeof(struct scsi_log_param_header);



 scsi_ulto2b(SLP_TI, data->ti.hdr.param_code);
 data->it.hdr.param_control = SLP_LBIN;
 data->ti.hdr.param_len = sizeof(struct scsi_log_time_interval) -
     sizeof(struct scsi_log_param_header);
 scsi_ulto4b(3, data->ti.exponent);
 scsi_ulto4b(1, data->ti.integer);
 return (0);
}
