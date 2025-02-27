
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int use_10_for_rw; int manage_start_stop; scalar_t__ type; int use_10_for_ms; int skip_ms_page_8; int fix_capacity; int start_stop_pwr_cond; int request_queue; struct sbp2_logical_unit* hostdata; } ;
struct sbp2_logical_unit {TYPE_1__* tgt; } ;
struct TYPE_2__ {int workarounds; } ;


 int SBP2_MAX_SEG_SIZE ;
 int SBP2_WORKAROUND_128K_MAX_TRANS ;
 int SBP2_WORKAROUND_FIX_CAPACITY ;
 int SBP2_WORKAROUND_MODE_SENSE_8 ;
 int SBP2_WORKAROUND_POWER_CONDITION ;
 scalar_t__ TYPE_DISK ;
 scalar_t__ TYPE_ROM ;
 int blk_queue_max_hw_sectors (int ,int) ;
 int blk_queue_max_segment_size (int ,int ) ;
 scalar_t__ sbp2_param_exclusive_login ;

__attribute__((used)) static int sbp2_scsi_slave_configure(struct scsi_device *sdev)
{
 struct sbp2_logical_unit *lu = sdev->hostdata;

 sdev->use_10_for_rw = 1;

 if (sbp2_param_exclusive_login)
  sdev->manage_start_stop = 1;

 if (sdev->type == TYPE_ROM)
  sdev->use_10_for_ms = 1;

 if (sdev->type == TYPE_DISK &&
     lu->tgt->workarounds & SBP2_WORKAROUND_MODE_SENSE_8)
  sdev->skip_ms_page_8 = 1;

 if (lu->tgt->workarounds & SBP2_WORKAROUND_FIX_CAPACITY)
  sdev->fix_capacity = 1;

 if (lu->tgt->workarounds & SBP2_WORKAROUND_POWER_CONDITION)
  sdev->start_stop_pwr_cond = 1;

 if (lu->tgt->workarounds & SBP2_WORKAROUND_128K_MAX_TRANS)
  blk_queue_max_hw_sectors(sdev->request_queue, 128 * 1024 / 512);

 blk_queue_max_segment_size(sdev->request_queue, SBP2_MAX_SEG_SIZE);

 return 0;
}
