
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct x38_error_info {int errsts; int errsts2; int* eccerrlog; } ;
struct mem_ctl_info {int dummy; } ;


 int HW_EVENT_ERR_CORRECTED ;
 int HW_EVENT_ERR_UNCORRECTED ;
 int X38_ECCERRLOG_CE ;
 int X38_ECCERRLOG_UE ;
 int X38_ERRSTS_BITS ;
 int eccerrlog_row (int,int) ;
 int eccerrlog_syndrome (int) ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int ,int ,int ,int,int,int,char*,char*) ;
 int x38_channel_num ;

__attribute__((used)) static void x38_process_error_info(struct mem_ctl_info *mci,
    struct x38_error_info *info)
{
 int channel;
 u64 log;

 if (!(info->errsts & X38_ERRSTS_BITS))
  return;

 if ((info->errsts ^ info->errsts2) & X38_ERRSTS_BITS) {
  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1, 0, 0, 0,
         -1, -1, -1,
         "UE overwrote CE", "");
  info->errsts = info->errsts2;
 }

 for (channel = 0; channel < x38_channel_num; channel++) {
  log = info->eccerrlog[channel];
  if (log & X38_ECCERRLOG_UE) {
   edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
          0, 0, 0,
          eccerrlog_row(channel, log),
          -1, -1,
          "x38 UE", "");
  } else if (log & X38_ECCERRLOG_CE) {
   edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1,
          0, 0, eccerrlog_syndrome(log),
          eccerrlog_row(channel, log),
          -1, -1,
          "x38 CE", "");
  }
 }
}
