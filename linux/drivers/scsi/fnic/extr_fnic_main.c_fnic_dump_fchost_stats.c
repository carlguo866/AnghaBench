
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_host_statistics {int fcp_output_megabytes; int fcp_input_megabytes; int fcp_control_requests; int fcp_output_requests; int fcp_input_requests; int invalid_crc_count; int invalid_tx_word_count; int prim_seq_protocol_err_count; int loss_of_signal_count; int loss_of_sync_count; int link_failure_count; int dumped_frames; int error_frames; int nos_count; int lip_count; int rx_words; int rx_frames; int tx_words; int tx_frames; int seconds_since_last_reset; } ;
struct Scsi_Host {int dummy; } ;


 int FNIC_MAIN_NOTE (int ,struct Scsi_Host*,char*,int ) ;
 int KERN_NOTICE ;

void fnic_dump_fchost_stats(struct Scsi_Host *host,
    struct fc_host_statistics *stats)
{
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: seconds since last reset = %llu\n",
   stats->seconds_since_last_reset);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: tx frames		= %llu\n",
   stats->tx_frames);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: tx words		= %llu\n",
   stats->tx_words);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: rx frames		= %llu\n",
   stats->rx_frames);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: rx words		= %llu\n",
   stats->rx_words);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: lip count		= %llu\n",
   stats->lip_count);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: nos count		= %llu\n",
   stats->nos_count);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: error frames		= %llu\n",
   stats->error_frames);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: dumped frames	= %llu\n",
   stats->dumped_frames);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: link failure count	= %llu\n",
   stats->link_failure_count);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: loss of sync count	= %llu\n",
   stats->loss_of_sync_count);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: loss of signal count	= %llu\n",
   stats->loss_of_signal_count);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: prim seq protocol err count = %llu\n",
   stats->prim_seq_protocol_err_count);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: invalid tx word count= %llu\n",
   stats->invalid_tx_word_count);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: invalid crc count	= %llu\n",
   stats->invalid_crc_count);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: fcp input requests	= %llu\n",
   stats->fcp_input_requests);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: fcp output requests	= %llu\n",
   stats->fcp_output_requests);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: fcp control requests	= %llu\n",
   stats->fcp_control_requests);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: fcp input megabytes	= %llu\n",
   stats->fcp_input_megabytes);
 FNIC_MAIN_NOTE(KERN_NOTICE, host,
   "fnic: fcp output megabytes	= %llu\n",
   stats->fcp_output_megabytes);
 return;
}
